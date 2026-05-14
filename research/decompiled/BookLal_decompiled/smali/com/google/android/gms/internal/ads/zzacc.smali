.class final Lcom/google/android/gms/internal/ads/zzacc;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzacd;

.field private zzb:Lcom/google/android/gms/internal/ads/zzv;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzacd;[B)V
    .locals 0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzacc;->zza:Lcom/google/android/gms/internal/ads/zzacd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzbv;)V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzt;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzt;-><init>()V

    iget v1, p1, Lcom/google/android/gms/internal/ads/zzbv;->zzb:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzt;->zzu(I)Lcom/google/android/gms/internal/ads/zzt;

    iget v1, p1, Lcom/google/android/gms/internal/ads/zzbv;->zzc:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzt;->zzv(I)Lcom/google/android/gms/internal/ads/zzt;

    const-string v1, "video/raw"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzt;->zzn(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzt;->zzN()Lcom/google/android/gms/internal/ads/zzv;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzacc;->zzb:Lcom/google/android/gms/internal/ads/zzv;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzacb;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzacb;-><init>(Lcom/google/android/gms/internal/ads/zzacc;Lcom/google/android/gms/internal/ads/zzbv;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzacc;->zza:Lcom/google/android/gms/internal/ads/zzacd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzacd;->zzC()Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zzb(JJZ)V
    .locals 7

    if-eqz p5, :cond_0

    iget-object p5, p0, Lcom/google/android/gms/internal/ads/zzacc;->zza:Lcom/google/android/gms/internal/ads/zzacd;

    invoke-virtual {p5}, Lcom/google/android/gms/internal/ads/zzacd;->zzA()Landroid/view/Surface;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzabz;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzabz;-><init>(Lcom/google/android/gms/internal/ads/zzacc;)V

    invoke-virtual {p5}, Lcom/google/android/gms/internal/ads/zzacd;->zzC()Ljava/util/concurrent/Executor;

    move-result-object p5

    invoke-interface {p5, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    iget-object p5, p0, Lcom/google/android/gms/internal/ads/zzacc;->zzb:Lcom/google/android/gms/internal/ads/zzv;

    if-nez p5, :cond_1

    new-instance p5, Lcom/google/android/gms/internal/ads/zzt;

    invoke-direct {p5}, Lcom/google/android/gms/internal/ads/zzt;-><init>()V

    invoke-virtual {p5}, Lcom/google/android/gms/internal/ads/zzt;->zzN()Lcom/google/android/gms/internal/ads/zzv;

    move-result-object p5

    :cond_1
    move-object v5, p5

    iget-object p5, p0, Lcom/google/android/gms/internal/ads/zzacc;->zza:Lcom/google/android/gms/internal/ads/zzacd;

    invoke-virtual {p5}, Lcom/google/android/gms/internal/ads/zzacd;->zzD()Lcom/google/android/gms/internal/ads/zzacz;

    move-result-object v0

    const/4 v6, 0x0

    move-wide v1, p3

    move-wide v3, p1

    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzacz;->zzcS(JJLcom/google/android/gms/internal/ads/zzv;Landroid/media/MediaFormat;)V

    invoke-virtual {p5}, Lcom/google/android/gms/internal/ads/zzacd;->zzz()Ljava/util/Queue;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/internal/ads/zzaea;

    invoke-interface {p3, p1, p2}, Lcom/google/android/gms/internal/ads/zzaea;->zza(J)V

    return-void
.end method
