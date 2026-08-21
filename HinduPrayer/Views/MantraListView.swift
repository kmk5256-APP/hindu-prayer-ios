import SwiftUI

struct MantraListView: View {
    private var grouped: [String: [Mantra]] {
        Dictionary(grouping: allMantras, by: \.category)
    }
    
    private var categories: [String] {
        grouped.keys.sorted()
    }
    
    var body: some View {
        List {
            ForEach(categories, id: \.self) { category in
                Section(header: Text(category.uppercased()).font(.caption).foregroundStyle(AppTheme.saffron)) {
                    ForEach(grouped[category] ?? []) { mantra in
                        NavigationLink {
                            MantraDetailView(mantra: mantra)
                        } label: {
                            HStack(spacing: 14) {
                                Text(String(mantra.sanskrit.prefix(1)))
                                    .font(.title2)
                                    .frame(width: 40, height: 40)
                                    .background(AppTheme.saffron.opacity(0.15))
                                    .clipShape(Circle())
                                    .foregroundStyle(AppTheme.saffron)
                                
                                VStack(alignment: .leading, spacing: 2) {
                                    Text(mantra.title)
                                        .font(.headline)
                                    Text(mantra.deity)
                                        .font(.subheadline)
                                        .foregroundStyle(.secondary)
                                }
                            }
                            .padding(.vertical, 4)
                        }
                    }
                }
            }
        }
        .navigationTitle("Sacred Mantras")
        .navigationBarTitleDisplayMode(.large)
    }
}

#Preview {
    NavigationStack {
        MantraListView()
    }
}
