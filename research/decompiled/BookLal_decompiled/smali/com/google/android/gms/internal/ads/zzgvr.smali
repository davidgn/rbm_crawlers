.class final Lcom/google/android/gms/internal/ads/zzgvr;
.super Lcom/google/android/gms/internal/ads/zzgya;
.source "SourceFile"


# instance fields
.field final zza:Ljava/util/Iterator;

.field zzb:Ljava/util/Iterator;

.field final synthetic zzc:Lcom/google/android/gms/internal/ads/zzgvu;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzgvu;)V
    .locals 1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgvr;->zzc:Lcom/google/android/gms/internal/ads/zzgvu;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgya;-><init>()V

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzgvu;->map:Lcom/google/android/gms/internal/ads/zzgvp;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgvp;->zzh()Lcom/google/android/gms/internal/ads/zzgvi;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgvm;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzgvm;->zzu(I)Lcom/google/android/gms/internal/ads/zzgyb;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgvr;->zza:Ljava/util/Iterator;

    sget-object p1, Lcom/google/android/gms/internal/ads/zzgwc;->zza:Lcom/google/android/gms/internal/ads/zzgyb;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgvr;->zzb:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgvr;->zzb:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgvr;->zza:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgvr;->zzb:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgvr;->zza:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgvi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgvi;->zza()Lcom/google/android/gms/internal/ads/zzgya;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgvr;->zzb:Ljava/util/Iterator;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgvr;->zzb:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
