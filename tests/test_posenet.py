from unittest import TestCase, main
from networks.posenet import Regression
import torch
import numpy as np


class RegressionTest(TestCase):
    def test_forward(self):
        sample_x = torch.from_numpy(np.random.rand(32, 512, 16, 14)).float()
        model = Regression(regid="regress1")
        xyz, wpqr = model(sample_x)
        self.assertEqual(str(xyz.shape), 'torch.Size([32, 3])')
        self.assertEqual(str(wpqr.shape), 'torch.Size([32, 4])')


if __name__ == '__main__':
    main()
