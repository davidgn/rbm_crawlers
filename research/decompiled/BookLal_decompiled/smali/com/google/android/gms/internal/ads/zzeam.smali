.class final Lcom/google/android/gms/internal/ads/zzeam;
.super Lcom/google/android/gms/internal/ads/zzcbt;
.source "SourceFile"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzeao;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzeao;)V
    .locals 0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeam;->zza:Lcom/google/android/gms/internal/ads/zzeao;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcbt;-><init>()V

    return-void
.end method


# virtual methods
.method public final zze()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeam;->zza:Lcom/google/android/gms/internal/ads/zzeao;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeao;->zze()Lcom/google/android/gms/internal/ads/zzead;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeao;->zzd()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzead;->zzk(J)V

    return-void
.end method

.method public final zzf(I)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeam;->zza:Lcom/google/android/gms/internal/ads/zzeao;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeao;->zze()Lcom/google/android/gms/internal/ads/zzead;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeao;->zzd()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, p1}, Lcom/google/android/gms/internal/ads/zzead;->zzl(JI)V

    return-void
.end method

.method public final zzg(Lcom/google/android/gms/ads/internal/client/zze;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeam;->zza:Lcom/google/android/gms/internal/ads/zzeao;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeao;->zze()Lcom/google/android/gms/internal/ads/zzead;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeao;->zzd()J

    move-result-wide v2

    iget p1, p1, Lcom/google/android/gms/ads/internal/client/zze;->zza:I

    invoke-virtual {v1, v2, v3, p1}, Lcom/google/android/gms/internal/ads/zzead;->zzl(JI)V

    return-void
.end method
