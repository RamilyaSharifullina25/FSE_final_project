import sys
sys.path.append('..')

from unittest import TestCase, main
import numpy as np


class AbsPoseDatasetTest(TestCase):
    def test_parse_abs_pose_txt(self):
        poses = []
        ims = []

        f = open('sample.txt')
        for line in f.readlines()[3::]:  # Skip 3 header lines
            cur = line.split(' ')
            xyz = np.array([float(v) for v in cur[1:4]], dtype=np.float32)
            wpqr = np.array([float(v) for v in cur[4:8]], dtype=np.float32)
            ims.append(cur[0])
            poses.append((xyz, wpqr))
            self.assertEqual(len(cur), 8)


if __name__ == '__main__':
    main()
