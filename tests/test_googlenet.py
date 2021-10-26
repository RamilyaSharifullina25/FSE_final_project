import sys
sys.path.append('..')

from unittest import TestCase, main
from networks.base.googlenet import InceptionBlock
from networks.base.googlenet import GoogLeNet
import numpy as np
import torch


class InceptionBlockTest(TestCase):
    def test_inc_forward(self):
        sample_x = torch.from_numpy(np.random.rand(2, 2, 1, 1)).float()
        sample_block_in = 2
        sample_branch_out = [2, [2, 2], [2, 2], 2]
        model = InceptionBlock(sample_block_in, sample_branch_out)
        output_shape = model(sample_x).shape
        self.assertEqual(str(output_shape), 'torch.Size([2, 8, 1, 1])')

    def test_googlenet_forward(self):
        sample_x = torch.from_numpy(np.random.rand(2, 3, 1, 1)).float()
        model = GoogLeNet(with_aux=False)
        out = model(sample_x)
        self.assertTrue(str(out.shape) == 'torch.Size([2, 1024, 1, 1])')


if __name__ == '__main__':
    main()
