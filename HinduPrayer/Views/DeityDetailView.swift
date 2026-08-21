import SwiftUI

struct DeityDetailView: View {
    let deity: Deity
    
    private var relatedMantras: [Mantra] {
        allMantras.filter { deity.mantraIds.contains($0.id) }
    }
    
    var body: some View {
        ScrollView {
            VStack(spacing: 0) {
                // Header
                VStack(spacing: 12) {
                    Image(systemName: deity.icon)
                        .font(.system(size: 56))
                        .foregroundStyle(.white)
                    Text(deity.sanskritName)
                        .font(.title)
                        .foregroundStyle(.white)
                }
                .frame(maxWidth: .infinity)
                .padding(.vertical, 40)
                .background(
                    LinearGradient(colors: [deity.color, deity.color.opacity(0.7)],
                                   startPoint: .top, endPoint: .bottom)
                )
                
                VStack(alignment: .leading, spacing: 24) {
                    // About
                    VStack(alignment: .leading, spacing: 8) {
                        Text("About")
                            .font(.title2.bold())
                        Text(deity.description)
                            .font(.body)
                            .foregroundStyle(.secondary)
                    }
                    
                    // Related Mantras
                    if !relatedMantras.isEmpty {
                        VStack(alignment: .leading, spacing: 12) {
                            Text("Related Mantras")
                                .font(.title2.bold())
                            ForEach(relatedMantras) { mantra in
                                NavigationLink {
                                    MantraDetailView(mantra: mantra)
                                } label: {
                                    HStack {
                                        VStack(alignment: .leading) {
                                            Text(mantra.title)
                                                .font(.headline)
                                            Text(mantra.transliteration.components(separatedBy: "\n").first ?? "")
                                                .font(.caption)
                                                .foregroundStyle(.secondary)
                                        }
                                        Spacer()
                                        Image(systemName: "chevron.right")
                                            .foregroundStyle(.tertiary)
                                    }
                                    .padding()
                                    .background(AppTheme.cardBackground)
                                    .clipShape(RoundedRectangle(cornerRadius: 12))
                                }
                                .buttonStyle(.plain)
                            }
                        }
                    }
                    
                    // Aarti
                    if !deity.aarti.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty {
                        VStack(alignment: .leading, spacing: 8) {
                            Text("Aarti")
                                .font(.title2.bold())
                            Text(deity.aarti.trimmingCharacters(in: .whitespacesAndNewlines))
                                .font(.title3)
                                .multilineTextAlignment(.center)
                                .lineSpacing(6)
                                .padding()
                                .frame(maxWidth: .infinity)
                                .background(AppTheme.cardBackground)
                                .clipShape(RoundedRectangle(cornerRadius: 16))
                        }
                    }
                }
                .padding()
            }
        }
        .ignoresSafeArea(edges: .top)
        .navigationTitle(deity.name)
        .navigationBarTitleDisplayMode(.inline)
        .toolbarBackground(.hidden, for: .navigationBar)
    }
}

#Preview {
    NavigationStack {
        DeityDetailView(deity: allDeities[0])
    }
}
