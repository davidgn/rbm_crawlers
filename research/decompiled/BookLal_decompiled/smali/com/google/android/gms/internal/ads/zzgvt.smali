.class final Lcom/google/android/gms/internal/ads/zzgvt;
.super Lcom/google/android/gms/internal/ads/zzgvi;
.source "SourceFile"


# instance fields
.field private final transient zza:Lcom/google/android/gms/internal/ads/zzgvu;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzgvu;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgvi;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgvt;->zza:Lcom/google/android/gms/internal/ads/zzgvu;

    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgvt;->zza:Lcom/google/android/gms/internal/ads/zzgvu;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgvu;->zzr(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgvr;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgvt;->zza:Lcom/google/android/gms/internal/ads/zzgvu;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzgvr;-><init>(Lcom/google/android/gms/internal/ads/zzgvu;)V

    return-object v0
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgvt;->zza:Lcom/google/android/gms/internal/ads/zzgvu;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzgvu;->size:I

    return v0
.end method

.method public final zza()Lcom/google/android/gms/internal/ads/zzgya;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgvr;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgvt;->zza:Lcom/google/android/gms/internal/ads/zzgvu;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzgvr;-><init>(Lcom/google/android/gms/internal/ads/zzgvu;)V

    return-object v0
.end method

.method public final zzf()Z
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public final zzg([Ljava/lang/Object;I)I
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgvt;->zza:Lcom/google/android/gms/internal/ads/zzgvu;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzgvu;->map:Lcom/google/android/gms/internal/ads/zzgvp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgvp;->zzh()Lcom/google/android/gms/internal/ads/zzgvi;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgvm;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgvm;->zzu(I)Lcom/google/android/gms/internal/ads/zzgyb;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzgvi;

    invoke-virtual {v1, p1, p2}, Lcom/google/android/gms/internal/ads/zzgvi;->zzg([Ljava/lang/Object;I)I

    move-result p2

    goto :goto_0

    :cond_0
    return p2
.end method
