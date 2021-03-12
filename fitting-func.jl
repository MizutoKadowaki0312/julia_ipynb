using Plots

function gaussian(x , A , μ , σ)
    A*exp(-((x-μ)/σ)^2)
end

function TwoGaussian(x , A , μ1 , μ2 , σ)
    gaussian(x , 2A , μ1 , σ) + gaussian(x , A , μ2 , σ)
    
end

x = -0.1:0.0001:0.1
f(x) = gaussian(x , 100 , 0 , 0.01)
plot(x,f)

g(x) = TwoGaussian(x , 100 , -0.05 , 0.05 , 0.01)
plot!(x,g)


savefig("myplot.png") # Saves the CURRENT_PLOT as a .png
savefig("myplot.pdf") # Saves the plot from p as a .pdf vector graphic