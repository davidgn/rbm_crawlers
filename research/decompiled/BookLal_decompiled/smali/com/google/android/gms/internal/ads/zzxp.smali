.class final Lcom/google/android/gms/internal/ads/zzxp;
.super Lcom/google/android/gms/internal/ads/zzafv;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzyk;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzafc;

.field private final zzc:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzyk;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzafv;-><init>(Lcom/google/android/gms/internal/ads/zzags;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzxp;->zza:Lcom/google/android/gms/internal/ads/zzyk;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzafc;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzafc;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzxp;->zzb:Lcom/google/android/gms/internal/ads/zzafc;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzxo;->zza:Lcom/google/android/gms/internal/ads/zzxo;

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzxp;->zzc:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method private final zzh()Lcom/google/android/gms/internal/ads/zzags;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxp;->zzc:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzxo;->zzc:Lcom/google/android/gms/internal/ads/zzxo;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxp;->zzb:Lcom/google/android/gms/internal/ads/zzafc;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxp;->zza:Lcom/google/android/gms/internal/ads/zzyk;

    :goto_0
    return-object v0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzj;IZ)I
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzxp;->zzh()Lcom/google/android/gms/internal/ads/zzags;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzags;->zza(Lcom/google/android/gms/internal/ads/zzj;IZ)I

    move-result p1

    return p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzj;IZI)I
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzxp;->zzh()Lcom/google/android/gms/internal/ads/zzags;

    move-result-object p4

    const/4 v0, 0x0

    invoke-interface {p4, p1, p2, p3, v0}, Lcom/google/android/gms/internal/ads/zzags;->zzb(Lcom/google/android/gms/internal/ads/zzj;IZI)I

    move-result p1

    return p1
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzes;I)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzxp;->zzh()Lcom/google/android/gms/internal/ads/zzags;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzags;->zzc(Lcom/google/android/gms/internal/ads/zzes;I)V

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzes;II)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzxp;->zzh()Lcom/google/android/gms/internal/ads/zzags;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzags;->zzd(Lcom/google/android/gms/internal/ads/zzes;II)V

    return-void
.end method

.method public final zze(JIIILcom/google/android/gms/internal/ads/zzagr;)V
    .locals 7

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzxp;->zzh()Lcom/google/android/gms/internal/ads/zzags;

    move-result-object v0

    move-wide v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzags;->zze(JIIILcom/google/android/gms/internal/ads/zzagr;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzxp;->zzc:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p2

    sget-object p3, Lcom/google/android/gms/internal/ads/zzxo;->zzb:Lcom/google/android/gms/internal/ads/zzxo;

    if-ne p2, p3, :cond_0

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzxp;->zza:Lcom/google/android/gms/internal/ads/zzyk;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/zzyk;->zzg(Z)V

    sget-object p2, Lcom/google/android/gms/internal/ads/zzxo;->zzc:Lcom/google/android/gms/internal/ads/zzxo;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final zzf()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxp;->zzc:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzxo;->zza:Lcom/google/android/gms/internal/ads/zzxo;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
