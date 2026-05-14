.class final Lcom/google/android/gms/internal/ads/zzgxk;
.super Lcom/google/android/gms/internal/ads/zzgvw;
.source "SourceFile"


# instance fields
.field private final transient zza:Lcom/google/android/gms/internal/ads/zzgvp;

.field private final transient zzb:Lcom/google/android/gms/internal/ads/zzgvm;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzgvp;Lcom/google/android/gms/internal/ads/zzgvm;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgvw;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgxk;->zza:Lcom/google/android/gms/internal/ads/zzgvp;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgxk;->zzb:Lcom/google/android/gms/internal/ads/zzgvm;

    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgxk;->zza:Lcom/google/android/gms/internal/ads/zzgvp;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgvp;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgxk;->zzb:Lcom/google/android/gms/internal/ads/zzgvm;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgvm;->zzu(I)Lcom/google/android/gms/internal/ads/zzgyb;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgxk;->zza:Lcom/google/android/gms/internal/ads/zzgvp;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public final zza()Lcom/google/android/gms/internal/ads/zzgya;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgxk;->zzb:Lcom/google/android/gms/internal/ads/zzgvm;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgvm;->zzu(I)Lcom/google/android/gms/internal/ads/zzgyb;

    move-result-object v0

    return-object v0
.end method

.method public final zze()Lcom/google/android/gms/internal/ads/zzgvm;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgxk;->zzb:Lcom/google/android/gms/internal/ads/zzgvm;

    return-object v0
.end method

.method public final zzf()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final zzg([Ljava/lang/Object;I)I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgxk;->zzb:Lcom/google/android/gms/internal/ads/zzgvm;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzgvm;->zzg([Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method
