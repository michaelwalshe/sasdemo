import pandas as pd

def trimmed_mean(arr: pd.Series, percent: float = 0.05):
	arr = arr.sort_values()
	n = arr.size
	k = int((n * percent) / 2)
	return arr[k:n-k].mean()
