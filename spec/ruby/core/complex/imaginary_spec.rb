require File.expand_path('../../../shared/complex/image', __FILE__)

ruby_version_is "1.9" do
  describe "Complex#imaginary" do
    it_behaves_like :complex_image, :imaginary
  end
end
