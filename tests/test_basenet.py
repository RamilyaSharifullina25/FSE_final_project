import sys
sys.path.append('..')

import torch
import numpy as np
from unittest import TestCase, main
from networks.base.basenet import BaseNet


class WeightingLoss(TestCase):
    def test_fixed_weighting_loss(self):
        place = 5
        self.assertAlmostEqual(BaseNet.fixed_weighting_loss(0.5, 0.6, 1.0), 1.6, place)

    def test_learned_weighting_loss(self):
        sample_x = torch.from_numpy(np.array([[1, 2, 3],
                                              [4, 5, 6],
                                              [7, 8, 9]])).float()
        sample_y = torch.from_numpy(np.array([[5, 2, 1],
                                              [4, 2, 6],
                                              [0, 10, 1]])).float()
        self.assertTrue(str(BaseNet.learned_weighting_loss(self, loss_pos=0.3, loss_rot=0.7, sx=sample_x,
                                                           sq=sample_y).sum()) == 'tensor(77.5984)')


if __name__ == '__main__':
    main()

