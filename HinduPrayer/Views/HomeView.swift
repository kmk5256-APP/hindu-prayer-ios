import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 20) {
                    // Header
                    VStack(spacing: 8) {
                        Text("\u{0950}")
                            .font(.system(size: 72, weight: .light))
                            .foregroundStyle(AppTheme.saffron)
                        Text("Om Shanti")
                            .font(.subheadline)
                            .foregroundStyle(.secondary)
                            .tracking(2)
                    }
                    .padding(.top, 20)
                    .padding(.bottom, 10)
                    
                    // Grid of features
                    LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 16) {
                        NavigationLink {
                            MantraListView()
                        } label: {
                            HomeCard(title: "Sacred Mantras", subtitle: "Chant & Learn", systemImage: "book.fill", color: AppTheme.saffron)
                        }
                        
                        NavigationLink {
                            JapaMalaView()
                        } label: {
                            HomeCard(title: "Japa Mala", subtitle: "108 Bead Counter", systemImage: "circle.circle", color: Color.purple)
                        }
                        
                        NavigationLink {
                            DeityListView()
                        } label: {
                            HomeCard(title: "Deities", subtitle: "Divine Forms", systemImage: "building.columns.fill", color: AppTheme.maroon)
                        }
                        
                        HomeCard(title: "Daily Practice", subtitle: "Coming Soon", systemImage: "sun.max.fill", color: .green)
                            .opacity(0.7)
                    }
                    .padding(.horizontal)
                    
                    // Shanti mantra
                    VStack(spacing: 6) {
                        Text("\u{0950} \u{0936}\u{093e}\u{0928}\u{094d}\u{0924}\u{093f}\u{0903} \u{0936}\u{093e}\u{0928}\u{094d}\u{0924}\u{093f}\u{0903} \u{0936}\u{093e}\u{0928}\u{094d}\u{0924}\u{093f}\u{0903}")
                            .font(.title2)
                            .multilineTextAlignment(.center)
                        Text("Om Peace Peace Peace")
                            .font(.subheadline)
                            .italic()
                            .foregroundStyle(.secondary)
                    }
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(AppTheme.cardBackground)
                    .clipShape(RoundedRectangle(cornerRadius: 16))
                    .padding(.horizontal)
                    .padding(.top, 8)
                }
                .padding(.bottom, 40)
            }
            .background(Color(.systemGroupedBackground))
            .navigationTitle("Hindu Prayer")
            .navigationBarTitleDisplayMode(.inline)
        }
        .tint(AppTheme.saffron)
    }
}

struct HomeCard: View {
    let title: String
    let subtitle: String
    let systemImage: String
    let color: Color
    
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            Image(systemName: systemImage)
                .font(.title)
                .foregroundStyle(.white)
            Spacer()
            VStack(alignment: .leading, spacing: 2) {
                Text(title)
                    .font(.headline)
                    .foregroundStyle(.white)
                Text(subtitle)
                    .font(.caption)
                    .foregroundStyle(.white.opacity(0.85))
            }
        }
        .padding()
        .frame(maxWidth: .infinity, minHeight: 140)
        .background(
            LinearGradient(colors: [color.opacity(0.85), color], startPoint: .topLeading, endPoint: .bottomTrailing)
        )
        .clipShape(RoundedRectangle(cornerRadius: 16))
        .shadow(color: color.opacity(0.3), radius: 8, y: 4)
    }
}

#Preview {
    HomeView()
}
