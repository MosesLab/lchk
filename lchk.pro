index = mxml2('imageindex.xml', '/media/moses/Data/WSMR_align/mdata')
nan = !values.f_nan
Nimages = n_elements(index.filename)

means = fltarr(3,Nimages)
stds = fltarr(3,Nimages)


for i = 0, Nimages-1 do begin 
	moses2_read, index.filename[i],minus,zero,plus,noise,          $
        size=index.numpixels[i], index.channels[i, *], byteorder=byteorder, error=error, directory='/media/moses/Data/WSMR_align'
	
	zero = float(zero)
	
	xtv, zero	
endfor

end
