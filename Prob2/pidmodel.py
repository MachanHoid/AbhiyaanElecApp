import numpy as np
import matplotlib.pyplot as plt
import time


class VelocityModel:
    # dv/dt = k1*effort - k2*v + noise
    def __init__(self, dt=0.01, k1=1, k2=1):
        self.dt = dt
        self.k1 = k1  # Effort constant
        self.k2 = k2  # Friction Constant
        self.vels = np.zeros(int(1/self.dt))
        self.time = np.linspace(0, 1, int(1/self.dt))
        plt.ion()
        self.fig = plt.figure()
        self.ax = self.fig.add_subplot()
        self.ax.set_ylim(-5, 5)
        plt.yticks(range(-5,6))
        self.line1, = self.ax.plot(self.time, self.vels, 'r')

    def updateVel(self, effort):
        self.vels = np.roll(self.vels, -1)
        self.time = np.roll(self.time, -1)
        self.vels[-1] = self.vels[-2] + self.dt * \
            (self.k1*effort-self.k2*self.vels[-2]
             ) + 0.05*(np.random.random()-0.5)
        self.time[-1] = self.time[-2] + self.dt
        self.ax.set_xlim(self.time[0], self.time[-1])
        self.line1.set_ydata(self.vels)
        self.line1.set_xdata(self.time)
        self.fig.canvas.draw()
        self.fig.canvas.flush_events()


class PIDController:
    def __init__(self, model, kp=1, ki=0, kd=0):
        self.model = model
        self.kp = kp
        self.ki = ki
        self.kd = kd
        self.error = 0
        self.error_prev = 0
        self.errsum = 0
        self.throttle = 0
        self.setpoint = 0

    def updateController(self):
        self.error_prev = self.error
        self.error = self.setpoint - self.model.vels[-1]
        self.errsum += self.error

    def compute(self):
        self.throttle = self.kp*(self.error) + self.ki*(self.errsum) * \
            self.model.dt + self.kd * \
            (self.error - self.error_prev)/self.model.dt
        return self.throttle


prevtime = currtime = time.time()

# Define Model and Controller
bolt = VelocityModel(k1=0.145584295473428, k2=2.8976207362313526)
#controller = PIDController(bolt, kp=300, ki=3500, kd=1.2)
controller = PIDController(bolt, kp=600, ki=1500, kd=-0.2)

controller.setpoint = 1
seconds = 1
while seconds <= 50:
    prevtime = currtime
    currtime = time.time()
    while currtime - prevtime <= 0.01:
        pass
    seconds += 0.01
    if seconds % 1 <= 0.01:
        controller.setpoint = np.random.randint(-4, 5)
        print(controller.setpoint)
    bolt.updateVel(controller.compute())
    controller.updateController()
