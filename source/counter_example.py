import numpy as np
import matplotlib.pyplot as plt
import seaborn as sns
# sns.set()
# sns.set_style("white")
plt.rc('text', usetex=True)
plt.rc('font', family='serif', size=15)

eps = 0.7
beta = 1+eps/2

Q1 = np.array([[1, 1+eps], [0, 1/eps]])
Q2 = np.array([[0, eps], [1, 1+1/eps]])
sq1 = np.array([[0, 0], [1, 0], [1, 1], [0, 1], [0, 0]], dtype=np.float32)
sq2 = sq1.copy()
sq1[:, 0] += eps
sq1[:, 1] += 1/eps
beta_v = np.array([[beta, 0], [beta, 1+1/eps]])
beta_p = np.array([[beta, 1/(2*eps)]])

fig = plt.figure(figsize=(3, 3.5))
ax = fig.add_subplot(1, 1, 1)

plt.plot(Q1[0], Q1[1], marker='.', markersize=12)
plt.plot(Q2[0], Q2[1], marker='.', markersize=12)
plt.plot(sq1[:, 0], sq1[:, 1], color="grey", linestyle="dashed")
plt.plot(sq2[:, 0], sq2[:, 1], color="grey", linestyle="dashed")
# plt.plot(beta_v[:, 0], beta_v[:, 1], color="grey", linestyle="dashed")
plt.plot(beta_p[:, 0], beta_p[:, 1], color="grey", marker='.', markersize=12)
# plt.legend(["Q1", "Q2"])

plt.axis('equal')

xticks = [0, 1, beta, 1+eps]
plt.xticks(xticks, ('0', '1', r'$\beta$', r'$1+\epsilon$'))
yticks = [1, 1/eps, 1+1/eps]
plt.yticks(yticks, ('1', r'$\frac{1}{\epsilon}$', r'$1+\frac{1}{\epsilon}$'))

xticks_grid = [beta]
ax.set_xticks(xticks_grid, minor=True)
ax.grid(which='minor')
plt.ylim([0, 1+1/eps])
# plt.tight_layout(pad=0.4, w_pad=0.4, h_pad=0.)
plt.subplots_adjust(left=0.3, bottom=0.15)

plt.xlabel(r"$Q_c$")
plt.ylabel(r"$Q_r$")

plt.savefig("concavity_example.pdf")
plt.show()