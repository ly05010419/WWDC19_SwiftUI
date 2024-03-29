


import SwiftUI

struct LandmarkDetail: View {
    var landmark:Landmark
    
    var body: some View {
        VStack(spacing: 20){
            MapView(landmark: landmark)
                .frame(height: 300)
            Avatar(imageName: landmark.imageName)
                .offset(CGSize(width: 0, height: -130))
                .padding(.bottom, -130)
            Text(landmark.name)
            RowViewWithCard(name: "All",items: Array(landmarkData)).frame(height: 310).listRowInsets(EdgeInsets())
            Spacer()
        }.navigationBarTitle(Text(landmark.name),displayMode: .inline)
    }
    
}



















struct MapWithAvatar_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landmark: landmarkData[0]).previewDevice(PreviewDevice(rawValue: "iPhone XR"))
//        ForEach(["iPhone 7","iPhone XR","iPad Air 2"], id:\.self ){ key in
//            LandmarkDetail(landmark: landmarkData[0]).previewDevice(PreviewDevice(rawValue: key))
//        }
    }
}
