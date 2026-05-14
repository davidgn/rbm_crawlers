.class public final Lcom/google/android/gms/internal/ads/zziz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzlr;


# static fields
.field public static final zza:Lcom/google/android/gms/internal/ads/zzgvm;


# instance fields
.field private final zzb:Lcom/google/android/gms/internal/ads/zzbe;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzbd;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzabc;

.field private final zze:J

.field private final zzf:J

.field private final zzg:J

.field private final zzh:J

.field private final zzi:J

.field private final zzj:J

.field private final zzk:J

.field private final zzl:J

.field private final zzm:J

.field private final zzn:Lcom/google/android/gms/internal/ads/zzgvp;

.field private final zzo:Ljava/util/concurrent/ConcurrentHashMap;

.field private zzp:J


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-string v4, "rawresource"

    const-string v5, "asset"

    const-string v0, "file"

    const-string v1, "content"

    const-string v2, "data"

    const-string v3, "android.resource"

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzgvm;->zzn(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgvm;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zziz;->zza:Lcom/google/android/gms/internal/ads/zzgvm;

    return-void
.end method

.method public constructor <init>()V
    .locals 12

    new-instance v0, Lcom/google/android/gms/internal/ads/zzabc;

    const/4 v1, 0x1

    const/high16 v2, 0x10000

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzabc;-><init>(ZI)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgvp;->zza()Lcom/google/android/gms/internal/ads/zzgvp;

    move-result-object v1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v2, 0x3e8

    const/4 v3, 0x0

    const-string v4, "bufferForPlaybackMs"

    const-string v5, "0"

    invoke-static {v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zziz;->zzq(IILjava/lang/String;Ljava/lang/String;)V

    const-string v6, "bufferForPlaybackForLocalPlaybackMs"

    invoke-static {v2, v3, v6, v5}, Lcom/google/android/gms/internal/ads/zziz;->zzq(IILjava/lang/String;Ljava/lang/String;)V

    const/16 v7, 0x7d0

    const-string v8, "bufferForPlaybackAfterRebufferMs"

    invoke-static {v7, v3, v8, v5}, Lcom/google/android/gms/internal/ads/zziz;->zzq(IILjava/lang/String;Ljava/lang/String;)V

    const-string v9, "bufferForPlaybackAfterRebufferForLocalPlaybackMs"

    invoke-static {v2, v3, v9, v5}, Lcom/google/android/gms/internal/ads/zziz;->zzq(IILjava/lang/String;Ljava/lang/String;)V

    const v10, 0xc350

    const-string v11, "minBufferMs"

    invoke-static {v10, v2, v11, v4}, Lcom/google/android/gms/internal/ads/zziz;->zzq(IILjava/lang/String;Ljava/lang/String;)V

    const-string v4, "minBufferForLocalPlaybackMs"

    invoke-static {v2, v2, v4, v6}, Lcom/google/android/gms/internal/ads/zziz;->zzq(IILjava/lang/String;Ljava/lang/String;)V

    invoke-static {v10, v7, v11, v8}, Lcom/google/android/gms/internal/ads/zziz;->zzq(IILjava/lang/String;Ljava/lang/String;)V

    invoke-static {v2, v2, v4, v9}, Lcom/google/android/gms/internal/ads/zziz;->zzq(IILjava/lang/String;Ljava/lang/String;)V

    const-string v6, "maxBufferMs"

    invoke-static {v10, v10, v6, v11}, Lcom/google/android/gms/internal/ads/zziz;->zzq(IILjava/lang/String;Ljava/lang/String;)V

    const-string v6, "maxBufferForLocalPlaybackMs"

    invoke-static {v10, v2, v6, v4}, Lcom/google/android/gms/internal/ads/zziz;->zzq(IILjava/lang/String;Ljava/lang/String;)V

    const-string v2, "backBufferDurationMs"

    invoke-static {v3, v3, v2, v5}, Lcom/google/android/gms/internal/ads/zziz;->zzq(IILjava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzbe;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzbe;-><init>()V

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zziz;->zzb:Lcom/google/android/gms/internal/ads/zzbe;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzbd;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzbd;-><init>()V

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zziz;->zzc:Lcom/google/android/gms/internal/ads/zzbd;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zziz;->zzd:Lcom/google/android/gms/internal/ads/zzabc;

    const-wide/32 v2, 0xc350

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzfk;->zzq(J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/zziz;->zze:J

    const-wide/16 v4, 0x3e8

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/zzfk;->zzq(J)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/android/gms/internal/ads/zziz;->zzf:J

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzfk;->zzq(J)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/android/gms/internal/ads/zziz;->zzg:J

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzfk;->zzq(J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zziz;->zzh:J

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/zzfk;->zzq(J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zziz;->zzi:J

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/zzfk;->zzq(J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zziz;->zzj:J

    const-wide/16 v2, 0x7d0

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzfk;->zzq(J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zziz;->zzk:J

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/zzfk;->zzq(J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zziz;->zzl:J

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzfk;->zzq(J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zziz;->zzm:J

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zziz;->zzo:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgvp;->zzc(Ljava/util/Map;)Lcom/google/android/gms/internal/ads/zzgvp;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zziz;->zzn:Lcom/google/android/gms/internal/ads/zzgvp;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zziz;->zzp:J

    return-void
.end method

.method private final zzm(Lcom/google/android/gms/internal/ads/zzpy;)I
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziz;->zzn:Lcom/google/android/gms/internal/ads/zzgvp;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzpy;->zzb:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgvp;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    const/4 v0, -0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_0
    return v0
.end method

.method private final zzn(Lcom/google/android/gms/internal/ads/zzpy;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziz;->zzo:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zziy;

    if-eqz v1, :cond_0

    iget v2, v1, Lcom/google/android/gms/internal/ads/zziy;->zza:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lcom/google/android/gms/internal/ads/zziy;->zza:I

    if-nez v2, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zziz;->zzo()V

    :cond_0
    return-void
.end method

.method private final zzo()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziz;->zzo:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziz;->zzd:Lcom/google/android/gms/internal/ads/zzabc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzabc;->zze()V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zziz;->zzd:Lcom/google/android/gms/internal/ads/zzabc;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zziy;

    iget v3, v3, Lcom/google/android/gms/internal/ads/zziy;->zzc:I

    add-int/2addr v2, v3

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzabc;->zzf(I)V

    return-void
.end method

.method private final zzp(Lcom/google/android/gms/internal/ads/zzlq;)Z
    .locals 4

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzlq;->zzb:Lcom/google/android/gms/internal/ads/zzbf;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzlq;->zzc:Lcom/google/android/gms/internal/ads/zzwt;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzwt;->zza:Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zziz;->zzc:Lcom/google/android/gms/internal/ads/zzbd;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzbf;->zzo(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzbd;)Lcom/google/android/gms/internal/ads/zzbd;

    move-result-object p1

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzbd;->zzc:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zziz;->zzb:Lcom/google/android/gms/internal/ads/zzbe;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzbf;->zzb(ILcom/google/android/gms/internal/ads/zzbe;J)Lcom/google/android/gms/internal/ads/zzbe;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzbe;->zzd:Lcom/google/android/gms/internal/ads/zzak;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzak;->zzb:Lcom/google/android/gms/internal/ads/zzag;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzag;->zza:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/google/android/gms/internal/ads/zziz;->zza:Lcom/google/android/gms/internal/ads/zzgvm;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzgvm;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private static zzq(IILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    if-lt p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const-string p1, "%s cannot be less than %s"

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzgsj;->zzh(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private final zzr(Lcom/google/android/gms/internal/ads/zzpy;)I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziz;->zzo:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zziy;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zziy;->zzc()I

    move-result p1

    const/high16 v0, 0x10000

    mul-int/2addr p1, v0

    return p1
.end method

.method private final zzs(Lcom/google/android/gms/internal/ads/zzpy;)I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziz;->zzo:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zziy;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p1, Lcom/google/android/gms/internal/ads/zziy;->zzc:I

    return p1
.end method

.method private static final zzt(Z)Z
    .locals 0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzpy;)V
    .locals 7

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zziz;->zzp:J

    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_0

    cmp-long v2, v2, v0

    if-nez v2, :cond_1

    :cond_0
    move v2, v6

    goto :goto_0

    :cond_1
    move v2, v5

    :goto_0
    const-string v3, "Players that share the same LoadControl must share the same playback thread. See ExoPlayer.Builder.setPlaybackLooper(Looper)."

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzgsj;->zzj(ZLjava/lang/Object;)V

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zziz;->zzp:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziz;->zzo:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zziy;

    if-nez v1, :cond_2

    new-instance v1, Lcom/google/android/gms/internal/ads/zziy;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zziy;-><init>()V

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    iget v2, v1, Lcom/google/android/gms/internal/ads/zziy;->zza:I

    add-int/2addr v2, v6

    iput v2, v1, Lcom/google/android/gms/internal/ads/zziy;->zza:I

    :goto_1
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zziy;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zziz;->zzm(Lcom/google/android/gms/internal/ads/zzpy;)I

    move-result p1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_3

    const/high16 p1, 0xc80000

    :cond_3
    iput p1, v0, Lcom/google/android/gms/internal/ads/zziy;->zzc:I

    iput-boolean v5, v0, Lcom/google/android/gms/internal/ads/zziy;->zzb:Z

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzlq;Lcom/google/android/gms/internal/ads/zzyw;[Lcom/google/android/gms/internal/ads/zzaal;)V
    .locals 6

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zziz;->zzo:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzlq;->zza:Lcom/google/android/gms/internal/ads/zzpy;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zziz;->zzm(Lcom/google/android/gms/internal/ads/zzpy;)I

    move-result v1

    invoke-virtual {p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/ads/zziy;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, -0x1

    if-ne v1, v0, :cond_3

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zziz;->zzp(Lcom/google/android/gms/internal/ads/zzlq;)Z

    move-result p1

    array-length v0, p3

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/high16 v3, 0xc80000

    if-ge v1, v0, :cond_2

    aget-object v4, p3, v1

    if-eqz v4, :cond_1

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzaaq;->zza()Lcom/google/android/gms/internal/ads/zzbg;

    move-result-object v4

    iget v4, v4, Lcom/google/android/gms/internal/ads/zzbg;->zzc:I

    const/high16 v5, 0x20000

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    move v3, v5

    goto :goto_1

    :pswitch_1
    const/high16 v3, 0x1900000

    goto :goto_1

    :pswitch_2
    if-eqz p1, :cond_0

    const/high16 v3, 0x12c0000

    goto :goto_1

    :cond_0
    const/high16 v3, 0x7d00000

    goto :goto_1

    :pswitch_3
    const/high16 v3, 0x89a0000

    :goto_1
    :pswitch_4
    add-int/2addr v2, v3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/google/android/gms/internal/ads/zzfk;->zza:Ljava/lang/String;

    const/high16 p1, 0xc880000

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_3
    iput v1, p2, Lcom/google/android/gms/internal/ads/zziy;->zzc:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zziz;->zzo()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzpy;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zziz;->zzn(Lcom/google/android/gms/internal/ads/zzpy;)V

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzpy;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zziz;->zzn(Lcom/google/android/gms/internal/ads/zzpy;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zziz;->zzo:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zziz;->zzp:J

    :cond_0
    return-void
.end method

.method public final zze(Lcom/google/android/gms/internal/ads/zzpy;)Lcom/google/android/gms/internal/ads/zzaaw;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzix;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzix;-><init>(Lcom/google/android/gms/internal/ads/zziz;Lcom/google/android/gms/internal/ads/zzpy;)V

    return-object v0
.end method

.method public final zzf(Lcom/google/android/gms/internal/ads/zzpy;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zziz;->zzm:J

    return-wide v0
.end method

.method public final zzg(Lcom/google/android/gms/internal/ads/zzpy;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final zzh(Lcom/google/android/gms/internal/ads/zzlq;)Z
    .locals 14

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziz;->zzo:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzlq;->zza:Lcom/google/android/gms/internal/ads/zzpy;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zziy;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zziz;->zzr(Lcom/google/android/gms/internal/ads/zzpy;)I

    move-result v2

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zziz;->zzs(Lcom/google/android/gms/internal/ads/zzpy;)I

    move-result v3

    sget-object v4, Lcom/google/android/gms/internal/ads/zzpy;->zza:Lcom/google/android/gms/internal/ads/zzpy;

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v1, :cond_1

    if-ge v2, v3, :cond_0

    return v5

    :cond_0
    return v4

    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zziz;->zzp(Lcom/google/android/gms/internal/ads/zzlq;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-wide v6, p0, Lcom/google/android/gms/internal/ads/zziz;->zzf:J

    goto :goto_0

    :cond_2
    iget-wide v6, p0, Lcom/google/android/gms/internal/ads/zziz;->zze:J

    :goto_0
    if-eqz v1, :cond_3

    iget-wide v8, p0, Lcom/google/android/gms/internal/ads/zziz;->zzh:J

    goto :goto_1

    :cond_3
    iget-wide v8, p0, Lcom/google/android/gms/internal/ads/zziz;->zzg:J

    :goto_1
    iget v10, p1, Lcom/google/android/gms/internal/ads/zzlq;->zzf:F

    const/high16 v11, 0x3f800000    # 1.0f

    cmpl-float v11, v10, v11

    if-lez v11, :cond_4

    invoke-static {v6, v7, v10}, Lcom/google/android/gms/internal/ads/zzfk;->zzv(JF)J

    move-result-wide v6

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    :cond_4
    iget-wide v10, p1, Lcom/google/android/gms/internal/ads/zzlq;->zze:J

    const-wide/32 v12, 0x7a120

    invoke-static {v6, v7, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    cmp-long p1, v10, v6

    if-gez p1, :cond_7

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zziz;->zzt(Z)Z

    move-result p1

    if-nez p1, :cond_5

    if-ge v2, v3, :cond_6

    :cond_5
    move v4, v5

    :cond_6
    iput-boolean v4, v0, Lcom/google/android/gms/internal/ads/zziy;->zzb:Z

    if-nez v4, :cond_9

    cmp-long p1, v10, v12

    if-gez p1, :cond_9

    const-string p1, "DefaultLoadControl"

    const-string v1, "Target buffer size reached with less than 500ms of buffered media data."

    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/zzef;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    cmp-long p1, v10, v8

    if-gez p1, :cond_8

    if-lt v2, v3, :cond_9

    :cond_8
    iput-boolean v4, v0, Lcom/google/android/gms/internal/ads/zziy;->zzb:Z

    :cond_9
    :goto_2
    iget-boolean p1, v0, Lcom/google/android/gms/internal/ads/zziy;->zzb:Z

    return p1
.end method

.method public final zzi(Lcom/google/android/gms/internal/ads/zzlq;)Z
    .locals 12

    iget-boolean v0, p1, Lcom/google/android/gms/internal/ads/zzlq;->zzg:Z

    iget-wide v1, p1, Lcom/google/android/gms/internal/ads/zzlq;->zze:J

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzlq;->zzf:F

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zziz;->zzp(Lcom/google/android/gms/internal/ads/zzlq;)Z

    move-result v4

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzfk;->zzw(JF)J

    move-result-wide v1

    const/4 v3, 0x0

    const/4 v5, 0x1

    if-eqz v0, :cond_1

    if-eqz v4, :cond_0

    iget-wide v6, p0, Lcom/google/android/gms/internal/ads/zziz;->zzl:J

    :goto_0
    move v0, v5

    goto :goto_2

    :cond_0
    iget-wide v6, p0, Lcom/google/android/gms/internal/ads/zziz;->zzk:J

    :goto_1
    move v0, v3

    goto :goto_2

    :cond_1
    if-eqz v4, :cond_2

    iget-wide v6, p0, Lcom/google/android/gms/internal/ads/zziz;->zzj:J

    goto :goto_0

    :cond_2
    iget-wide v6, p0, Lcom/google/android/gms/internal/ads/zziz;->zzi:J

    goto :goto_1

    :goto_2
    iget-wide v8, p1, Lcom/google/android/gms/internal/ads/zzlq;->zzh:J

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v8, v10

    if-eqz v4, :cond_3

    const-wide/16 v10, 0x2

    div-long/2addr v8, v10

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    :cond_3
    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-lez v4, :cond_4

    cmp-long v1, v1, v6

    if-gez v1, :cond_4

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zziz;->zzt(Z)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzlq;->zza:Lcom/google/android/gms/internal/ads/zzpy;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zziz;->zzr(Lcom/google/android/gms/internal/ads/zzpy;)I

    move-result v0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zziz;->zzs(Lcom/google/android/gms/internal/ads/zzpy;)I

    move-result p1

    if-lt v0, p1, :cond_5

    :cond_4
    move v3, v5

    nop

    :cond_5
    return v3
.end method

.method public final zzj(Lcom/google/android/gms/internal/ads/zzpy;Lcom/google/android/gms/internal/ads/zzbf;Lcom/google/android/gms/internal/ads/zzwt;J)Z
    .locals 0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zziz;->zzo:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/ads/zziy;

    iget-boolean p2, p2, Lcom/google/android/gms/internal/ads/zziy;->zzb:Z

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public final synthetic zzk()Lcom/google/android/gms/internal/ads/zzabc;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziz;->zzd:Lcom/google/android/gms/internal/ads/zzabc;

    return-object v0
.end method

.method public final synthetic zzl()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziz;->zzo:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method
