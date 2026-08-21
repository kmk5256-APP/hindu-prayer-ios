import SwiftUI

struct DeityListView: View {
    var body: some View {
        List(allDeities) { deity in
            NavigationLink {
                DeityDetailView(deity: deity)
            } label: {
                HStack(spacing: 16) {
                    Image(systemName: deity.icon)
                        .font(.title2)
                        .foregroundStyle(deity.color)
                        .frame(width: 44, height: 44)
                        .background(deity.color.opacity(0.15))
                        .clipShape(Circle())
                    
                    VStack(alignment: .leading, spacing: 2) {
                        Text(deity.name)
                            .font(.headline)
                        Text(deity.sanskritName)
                            .font(.subheadline)
                            .foregroundStyle(deity.color)
                    }
                }
                .padding(.vertical, 6)
            }
        }
        .navigationTitle("Divine Deities")
        .navigationBarTitleDisplayMode(.large)
    }
}

#Preview {
    NavigationStack {
        DeityListView()
    }
}
