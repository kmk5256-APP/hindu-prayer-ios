import SwiftUI

struct MantraDetailView: View {
    let mantra: Mantra
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                // Sanskrit
                VStack(spacing: 10) {
                    Text("Sanskrit")
                        .font(.caption)
                        .foregroundStyle(AppTheme.saffron)
                    Text(mantra.sanskrit)
                        .font(.title2)
                        .multilineTextAlignment(.center)
                        .lineSpacing(6)
                }
                .frame(maxWidth: .infinity)
                .padding()
                .background(AppTheme.cardBackground)
                .clipShape(RoundedRectangle(cornerRadius: 16))
                
                // Transliteration
                VStack(alignment: .leading, spacing: 8) {
                    Text("Transliteration")
                        .font(.caption)
                        .foregroundStyle(AppTheme.saffron)
                    Text(mantra.transliteration)
                        .font(.body)
                        .italic()
                        .lineSpacing(4)
                }
                .padding()
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(AppTheme.cardBackground)
                .clipShape(RoundedRectangle(cornerRadius: 16))
                
                // Meaning
                VStack(alignment: .leading, spacing: 8) {
                    Text("Meaning")
                        .font(.caption)
                        .foregroundStyle(AppTheme.saffron)
                    Text(mantra.meaning)
                        .font(.body)
                        .lineSpacing(4)
                }
                .padding()
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(AppTheme.cardBackground)
                .clipShape(RoundedRectangle(cornerRadius: 16))
                
                // Start Japa
                NavigationLink {
                    JapaMalaView(initialMantra: mantra)
                } label: {
                    Label("Start Japa (\(mantra.recommendedCount) counts)", systemImage: "circle.circle")
                        .font(.headline)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(AppTheme.saffron)
                        .foregroundStyle(.white)
                        .clipShape(RoundedRectangle(cornerRadius: 14))
                }
                .padding(.top, 8)
            }
            .padding()
        }
        .background(Color(.systemGroupedBackground))
        .navigationTitle(mantra.title)
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItem(placement: .topBarTrailing) {
                ShareLink(item: "\(mantra.sanskrit)\n\n\(mantra.transliteration)\n\n\(mantra.meaning)") {
                    Image(systemName: "square.and.arrow.up")
                }
            }
        }
    }
}

#Preview {
    NavigationStack {
        MantraDetailView(mantra: allMantras[0])
    }
}
