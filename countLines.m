function count = countLines(filename)

  if isstr(filename)
  fid = fopen(filename);
    if fid < 3
    error('Failed to open %s',filename);
    end        
    else
      error('Filename (%s) is not a string',filename);
end

count = 0;
while( fgetl(fid) > 0 )
  count = count + 1;
end

fclose(fid);
