function mat = rowsRmNan(mat)

nanRowInds = find(sum(isnan(mat),2));
mat(nanRowInds,:) = [];
