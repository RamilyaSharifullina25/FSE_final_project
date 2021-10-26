import sys
sys.path.append('..')

from unittest import TestCase, main
from networks.poselstm import FourDirectionalLSTM
import torch
import numpy as np


class FourDirectionalLSTMTest(TestCase):
    def test_forward(self):
        sample_x = torch.from_numpy(np.random.rand(2, 2, 2, 2)).float()
        model = FourDirectionalLSTM(2, 8, 2)
        output_shape = model(sample_x).shape
        self.assertEqual(str(output_shape), 'torch.Size([2, 8])')


if __name__ == '__main__':
    main()
