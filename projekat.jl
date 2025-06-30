#Projekat(HeapSort)-Grupa 3
#PR43/2020-Bojan Kuljic

function HeapSort!(A)
	#indeksi roditelja i djece u Hip-u
	parent(i)=2/i
	left(i)=2*i
	right(i)=2*i + 1
	
	function maxHeapify!(A, i) 		#reorganizacija Hipa
		global heapsize #velicina hip-a
		l= left(i)
		r=right(i)
		if l <= heapsize && A[l] > A[i]
			largest = l			 	#najveci element u hip-u
		else
			largest = i
		end
		if r <= heapsize && A[r] > A[largest]
			largest = r
		end
		if largest != i
			A[[i largest]] = A[[largest i]]
			maxHeapify!(A, largest)
		end
	end
	
	function buildMaxHeap!(A)		 #izgradi Hip
		global heapsize 
		heapsize = length(A)
		for i= (Int(floor(length(A)/2))):-1:1
			maxHeapify!(A, i)
		end
	end
	
	buildMaxHeap!(A)
	for i= length(A):-1:2 
		A[[1 i]] = A[[i 1]]
		global heapsize = heapsize - 1 
		maxHeapify!(A, 1)
	end
end
