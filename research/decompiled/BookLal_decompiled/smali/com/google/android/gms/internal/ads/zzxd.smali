.class public final Lcom/google/android/gms/internal/ads/zzxd;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final zza:I

.field public final zzb:Lcom/google/android/gms/internal/ads/zzwt;

.field private final zzc:Ljava/util/concurrent/CopyOnWriteArrayList;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 2
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzxd;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILcom/google/android/gms/internal/ads/zzwt;)V

    return-void
.end method

.method private constructor <init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILcom/google/android/gms/internal/ads/zzwt;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzxd;->zzc:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzxd;->zza:I

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzxd;->zzb:Lcom/google/android/gms/internal/ads/zzwt;

    return-void
.end method


# virtual methods
.method public final zza(ILcom/google/android/gms/internal/ads/zzwt;)Lcom/google/android/gms/internal/ads/zzxd;
    .locals 2

    new-instance p1, Lcom/google/android/gms/internal/ads/zzxd;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxd;->zzc:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1, p2}, Lcom/google/android/gms/internal/ads/zzxd;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILcom/google/android/gms/internal/ads/zzwt;)V

    return-object p1
.end method

.method public final zzb(Landroid/os/Handler;Lcom/google/android/gms/internal/ads/zzxe;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzww;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzww;-><init>(Landroid/os/Handler;Lcom/google/android/gms/internal/ads/zzxe;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzxd;->zzc:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzxe;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxd;->zzc:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzww;

    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzww;->zzb:Lcom/google/android/gms/internal/ads/zzxe;

    if-ne v3, p1, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzwk;Lcom/google/android/gms/internal/ads/zzwp;I)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzxc;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzxc;-><init>(Lcom/google/android/gms/internal/ads/zzxd;Lcom/google/android/gms/internal/ads/zzwk;Lcom/google/android/gms/internal/ads/zzwp;I)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzxd;->zzi(Lcom/google/android/gms/internal/ads/zzds;)V

    return-void
.end method

.method public final zze(Lcom/google/android/gms/internal/ads/zzwk;Lcom/google/android/gms/internal/ads/zzwp;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzwx;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzwx;-><init>(Lcom/google/android/gms/internal/ads/zzxd;Lcom/google/android/gms/internal/ads/zzwk;Lcom/google/android/gms/internal/ads/zzwp;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzxd;->zzi(Lcom/google/android/gms/internal/ads/zzds;)V

    return-void
.end method

.method public final zzf(Lcom/google/android/gms/internal/ads/zzwk;Lcom/google/android/gms/internal/ads/zzwp;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzwy;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzwy;-><init>(Lcom/google/android/gms/internal/ads/zzxd;Lcom/google/android/gms/internal/ads/zzwk;Lcom/google/android/gms/internal/ads/zzwp;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzxd;->zzi(Lcom/google/android/gms/internal/ads/zzds;)V

    return-void
.end method

.method public final zzg(Lcom/google/android/gms/internal/ads/zzwk;Lcom/google/android/gms/internal/ads/zzwp;Ljava/io/IOException;Z)V
    .locals 7

    new-instance v6, Lcom/google/android/gms/internal/ads/zzwz;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzwz;-><init>(Lcom/google/android/gms/internal/ads/zzxd;Lcom/google/android/gms/internal/ads/zzwk;Lcom/google/android/gms/internal/ads/zzwp;Ljava/io/IOException;Z)V

    invoke-virtual {p0, v6}, Lcom/google/android/gms/internal/ads/zzxd;->zzi(Lcom/google/android/gms/internal/ads/zzds;)V

    return-void
.end method

.method public final zzh(Lcom/google/android/gms/internal/ads/zzwp;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzxa;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzxa;-><init>(Lcom/google/android/gms/internal/ads/zzxd;Lcom/google/android/gms/internal/ads/zzwp;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzxd;->zzi(Lcom/google/android/gms/internal/ads/zzds;)V

    return-void
.end method

.method public final zzi(Lcom/google/android/gms/internal/ads/zzds;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxd;->zzc:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzww;

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzww;->zzb:Lcom/google/android/gms/internal/ads/zzxe;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzww;->zza:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzxb;

    invoke-direct {v3, p1, v2}, Lcom/google/android/gms/internal/ads/zzxb;-><init>(Lcom/google/android/gms/internal/ads/zzds;Lcom/google/android/gms/internal/ads/zzxe;)V

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/ads/zzfk;->zzd(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method
