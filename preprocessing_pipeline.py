from sklearn.base import BaseEstimator, TransformerMixin
from sklearn.preprocessing import MultiLabelBinarizer, OneHotEncoder
from sklearn.pipeline import FeatureUnion
from sklearn.pipeline import Pipeline


class SelectiveMultiLableBinarizer(MultiLabelBinarizer):
    """Same as MultiLabelBinarizer but on a subset of data to allow multiple transformation of heterogeneous dataset.

    If subset is None behave exactly as MultilabelBinarizer

    Add as argument subset bla bla
    """

    def __init__(self, subset=None, **kwargs):
        super(SelectiveMultiLableBinarizer, self).__init__(**kwargs)
        self.subset = subset

    def fit(self, y=None):
        """
        Use MultiLabelBinarizer fit method on a subset of columns

        :param y: array n_samples by n_features
        :return: self
        """

        self.classes_ = super(SelectiveMultiLableBinarizer, self).fit(y).classes_

        return self
