.class public final Lcom/google/android/gms/internal/ads/zzcjh;
.super Lcom/google/android/gms/internal/ads/zzcgj;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzig;
.implements Lcom/google/android/gms/internal/ads/zzni;


# static fields
.field public static final synthetic zza:I


# instance fields
.field private final zzb:Landroid/content/Context;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzcir;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzaaj;

.field private final zze:Lcom/google/android/gms/internal/ads/zzcgr;

.field private final zzf:Ljava/lang/ref/WeakReference;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzyc;

.field private zzh:Lcom/google/android/gms/internal/ads/zzjo;

.field private zzi:Ljava/nio/ByteBuffer;

.field private zzj:Z

.field private zzk:Lcom/google/android/gms/internal/ads/zzcgi;

.field private zzl:I

.field private zzm:I

.field private zzn:J

.field private final zzo:Ljava/lang/String;

.field private final zzp:I

.field private final zzq:Ljava/lang/Object;

.field private zzr:Ljava/lang/Integer;

.field private final zzs:Ljava/util/ArrayList;

.field private volatile zzt:Lcom/google/android/gms/internal/ads/zzciu;

.field private final zzu:Ljava/util/Set;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcgr;Lcom/google/android/gms/internal/ads/zzcgs;Ljava/lang/Integer;)V
    .locals 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcgj;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjh;->zzq:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjh;->zzu:Ljava/util/Set;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcjh;->zzb:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcjh;->zze:Lcom/google/android/gms/internal/ads/zzcgr;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcjh;->zzr:Ljava/lang/Integer;

    new-instance p4, Ljava/lang/ref/WeakReference;

    invoke-direct {p4, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcjh;->zzf:Ljava/lang/ref/WeakReference;

    new-instance p4, Lcom/google/android/gms/internal/ads/zzcir;

    invoke-direct {p4}, Lcom/google/android/gms/internal/ads/zzcir;-><init>()V

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcjh;->zzc:Lcom/google/android/gms/internal/ads/zzcir;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaaj;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzaaj;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjh;->zzd:Lcom/google/android/gms/internal/ads/zzaaj;

    invoke-static {}, Lcom/google/android/gms/ads/internal/util/zze;->zzc()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SimpleExoPlayerAdapter initialize "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzcgj;->zzf()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    new-instance v1, Lcom/google/android/gms/internal/ads/zznc;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzcjc;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/zzcjc;-><init>(Lcom/google/android/gms/internal/ads/zzcjh;)V

    invoke-direct {v1, p1, v2}, Lcom/google/android/gms/internal/ads/zznc;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzmy;)V

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zznc;->zza(Lcom/google/android/gms/internal/ads/zzaas;)Lcom/google/android/gms/internal/ads/zznc;

    invoke-virtual {v1, p4}, Lcom/google/android/gms/internal/ads/zznc;->zzb(Lcom/google/android/gms/internal/ads/zzlr;)Lcom/google/android/gms/internal/ads/zznc;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zznc;->zzc()Lcom/google/android/gms/internal/ads/zznd;

    move-result-object p4

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcjh;->zzh:Lcom/google/android/gms/internal/ads/zzjo;

    invoke-interface {p4, p0}, Lcom/google/android/gms/internal/ads/zzjo;->zzD(Lcom/google/android/gms/internal/ads/zzni;)V

    const/4 p4, 0x0

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzcjh;->zzl:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzcjh;->zzn:J

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzcjh;->zzm:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjh;->zzs:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjh;->zzt:Lcom/google/android/gms/internal/ads/zzciu;

    if-eqz p3, :cond_1

    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzcgs;->zzn()Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgsh;->zzd(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgsh;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgsh;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjh;->zzo:Ljava/lang/String;

    if-eqz p3, :cond_2

    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzcgs;->zzp()I

    move-result v0

    goto :goto_0

    :cond_2
    move v0, p4

    :goto_0
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzcjh;->zzp:I

    new-instance v0, Lcom/google/android/gms/internal/ads/zzyc;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzc()Lcom/google/android/gms/ads/internal/util/zzs;

    move-result-object v1

    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzcgs;->zzs()Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-result-object p3

    iget-object p3, p3, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->afmaVersion:Ljava/lang/String;

    invoke-virtual {v1, p1, p3}, Lcom/google/android/gms/ads/internal/util/zzs;->zze(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzcjh;->zzj:Z

    if-eqz p3, :cond_3

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzcjh;->zzi:Ljava/nio/ByteBuffer;

    invoke-virtual {p3}, Ljava/nio/Buffer;->limit()I

    move-result p3

    if-lez p3, :cond_3

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcjh;->zzi:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result p1

    new-array p1, p1, [B

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcjh;->zzi:Ljava/nio/ByteBuffer;

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzciw;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzciw;-><init>([B)V

    goto/16 :goto_6

    :cond_3
    sget-object p3, Lcom/google/android/gms/internal/ads/zzbhv;->zzcJ:Lcom/google/android/gms/internal/ads/zzbhm;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbht;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/google/android/gms/internal/ads/zzbht;->zzd(Lcom/google/android/gms/internal/ads/zzbhm;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    const/4 v1, 0x1

    if-eqz p3, :cond_5

    sget-object p3, Lcom/google/android/gms/internal/ads/zzbhv;->zzcB:Lcom/google/android/gms/internal/ads/zzbhm;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbht;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/google/android/gms/internal/ads/zzbht;->zzd(Lcom/google/android/gms/internal/ads/zzbhm;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-nez p3, :cond_4

    goto :goto_2

    :cond_4
    :goto_1
    move p4, v1

    goto :goto_3

    :cond_5
    :goto_2
    iget-boolean p3, p2, Lcom/google/android/gms/internal/ads/zzcgr;->zzi:Z

    if-nez p3, :cond_6

    goto :goto_1

    :cond_6
    :goto_3
    iget-boolean p3, p2, Lcom/google/android/gms/internal/ads/zzcgr;->zzl:Z

    if-eqz p3, :cond_7

    new-instance p3, Lcom/google/android/gms/internal/ads/zzcix;

    invoke-direct {p3, p0, p1, p4}, Lcom/google/android/gms/internal/ads/zzcix;-><init>(Lcom/google/android/gms/internal/ads/zzcjh;Ljava/lang/String;Z)V

    goto :goto_4

    :cond_7
    iget p3, p2, Lcom/google/android/gms/internal/ads/zzcgr;->zzh:I

    if-lez p3, :cond_8

    new-instance p3, Lcom/google/android/gms/internal/ads/zzciz;

    invoke-direct {p3, p0, p1, p4}, Lcom/google/android/gms/internal/ads/zzciz;-><init>(Lcom/google/android/gms/internal/ads/zzcjh;Ljava/lang/String;Z)V

    goto :goto_4

    :cond_8
    new-instance p3, Lcom/google/android/gms/internal/ads/zzciy;

    invoke-direct {p3, p0, p1, p4}, Lcom/google/android/gms/internal/ads/zzciy;-><init>(Lcom/google/android/gms/internal/ads/zzcjh;Ljava/lang/String;Z)V

    :goto_4
    iget-boolean p1, p2, Lcom/google/android/gms/internal/ads/zzcgr;->zzi:Z

    if-eqz p1, :cond_9

    new-instance p1, Lcom/google/android/gms/internal/ads/zzcja;

    invoke-direct {p1, p0, p3}, Lcom/google/android/gms/internal/ads/zzcja;-><init>(Lcom/google/android/gms/internal/ads/zzcjh;Lcom/google/android/gms/internal/ads/zzhh;)V

    move-object p2, p1

    goto :goto_5

    :cond_9
    move-object p2, p3

    :goto_5
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcjh;->zzi:Ljava/nio/ByteBuffer;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result p1

    if-lez p1, :cond_a

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcjh;->zzi:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result p1

    new-array p1, p1, [B

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzcjh;->zzi:Ljava/nio/ByteBuffer;

    invoke-virtual {p3, p1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    new-instance p3, Lcom/google/android/gms/internal/ads/zzcjb;

    invoke-direct {p3, p2, p1}, Lcom/google/android/gms/internal/ads/zzcjb;-><init>(Lcom/google/android/gms/internal/ads/zzhh;[B)V

    move-object p2, p3

    :cond_a
    :goto_6
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbhv;->zzp:Lcom/google/android/gms/internal/ads/zzbhm;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbht;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/google/android/gms/internal/ads/zzbht;->zzd(Lcom/google/android/gms/internal/ads/zzbhm;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_b

    sget-object p1, Lcom/google/android/gms/internal/ads/zzcje;->zza:Lcom/google/android/gms/internal/ads/zzcje;

    goto :goto_7

    :cond_b
    sget-object p1, Lcom/google/android/gms/internal/ads/zzcjd;->zza:Lcom/google/android/gms/internal/ads/zzcjd;

    :goto_7
    invoke-direct {v0, p2, p1}, Lcom/google/android/gms/internal/ads/zzyc;-><init>(Lcom/google/android/gms/internal/ads/zzhh;Lcom/google/android/gms/internal/ads/zzafl;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjh;->zzg:Lcom/google/android/gms/internal/ads/zzyc;

    return-void
.end method

.method private final zzY()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjh;->zzt:Lcom/google/android/gms/internal/ads/zzciu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjh;->zzt:Lcom/google/android/gms/internal/ads/zzciu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzciu;->zzl()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final finalize()V
    .locals 2

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzcgj;->zzf()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    invoke-static {}, Lcom/google/android/gms/ads/internal/util/zze;->zzc()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SimpleExoPlayerAdapter finalize "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final zzA(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjh;->zzu:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzciq;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzciq;->zzk(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final zzB()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjh;->zzh:Lcom/google/android/gms/internal/ads/zzjo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzC()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjh;->zzh:Lcom/google/android/gms/internal/ads/zzjo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbb;->zzh()I

    move-result v0

    return v0
.end method

.method public final zzD()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjh;->zzh:Lcom/google/android/gms/internal/ads/zzjo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbb;->zzu()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzE(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjh;->zzh:Lcom/google/android/gms/internal/ads/zzjo;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzbb;->zzj(Z)V

    return-void
.end method

.method public final zzF(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjh;->zzc:Lcom/google/android/gms/internal/ads/zzcir;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcir;->zzk(I)V

    return-void
.end method

.method public final zzG(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjh;->zzc:Lcom/google/android/gms/internal/ads/zzcir;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcir;->zzl(I)V

    return-void
.end method

.method public final zzH()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjh;->zzh:Lcom/google/android/gms/internal/ads/zzjo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbb;->zzt()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzI()J
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcjh;->zzY()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzcjh;->zzl:I

    int-to-long v0, v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final zzJ()J
    .locals 4

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcjh;->zzY()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjh;->zzt:Lcom/google/android/gms/internal/ads/zzciu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzciu;->zzm()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzcjh;->zzl:I

    int-to-long v0, v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcjh;->zzt:Lcom/google/android/gms/internal/ads/zzciu;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzciu;->zzo()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0

    :cond_1
    :goto_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final zzK()J
    .locals 10

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcjh;->zzY()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjh;->zzq:Ljava/lang/Object;

    monitor-enter v0

    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcjh;->zzs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzcjh;->zzn:J

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzib;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzib;->zzj()Ljava/util/Map;

    move-result-object v1

    const-wide/16 v5, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :catch_0
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v7, :cond_0

    :try_start_1
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_0

    const-string v8, "content-length"

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/CharSequence;

    invoke-static {v8, v9}, Lcom/google/android/gms/internal/ads/zzgrs;->zze(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_1
    :goto_1
    add-long/2addr v2, v5

    :try_start_2
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzcjh;->zzn:J

    goto :goto_0

    :cond_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzcjh;->zzn:J

    return-wide v0

    :goto_2
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjh;->zzt:Lcom/google/android/gms/internal/ads/zzciu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzciu;->zzp()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzL()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzcjh;->zzm:I

    return v0
.end method

.method public final zzM(Z)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjh;->zzh:Lcom/google/android/gms/internal/ads/zzjo;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcjh;->zzh:Lcom/google/android/gms/internal/ads/zzjo;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzjo;->zzF()I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcjh;->zzd:Lcom/google/android/gms/internal/ads/zzaaj;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaaj;->zzc()Lcom/google/android/gms/internal/ads/zzzu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzzu;->zzd()Lcom/google/android/gms/internal/ads/zzzt;

    move-result-object v2

    xor-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v0, v3}, Lcom/google/android/gms/internal/ads/zzzt;->zzy(IZ)Lcom/google/android/gms/internal/ads/zzzt;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzaaj;->zzf(Lcom/google/android/gms/internal/ads/zzzt;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final zzN()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjh;->zzh:Lcom/google/android/gms/internal/ads/zzjo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbb;->zzv()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzO()J
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzcjh;->zzl:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public final zzR(Landroid/net/Uri;)Lcom/google/android/gms/internal/ads/zzwv;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzz;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzz;->zzb(Landroid/net/Uri;)Lcom/google/android/gms/internal/ads/zzz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzz;->zzc()Lcom/google/android/gms/internal/ads/zzak;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjh;->zzg:Lcom/google/android/gms/internal/ads/zzyc;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcjh;->zze:Lcom/google/android/gms/internal/ads/zzcgr;

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzcgr;->zzf:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzyc;->zza(I)Lcom/google/android/gms/internal/ads/zzyc;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzyc;->zzb(Lcom/google/android/gms/internal/ads/zzak;)Lcom/google/android/gms/internal/ads/zzyd;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic zzS(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzhi;
    .locals 10

    const/4 v0, 0x1

    if-eq v0, p2, :cond_0

    const/4 p2, 0x0

    move-object v2, p2

    goto :goto_0

    :cond_0
    move-object v2, p0

    :goto_0
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcjh;->zze:Lcom/google/android/gms/internal/ads/zzcgr;

    new-instance v9, Lcom/google/android/gms/internal/ads/zzcjk;

    iget v3, p2, Lcom/google/android/gms/internal/ads/zzcgr;->zzd:I

    iget v4, p2, Lcom/google/android/gms/internal/ads/zzcgr;->zze:I

    iget-wide v5, p2, Lcom/google/android/gms/internal/ads/zzcgr;->zzm:J

    iget-wide v7, p2, Lcom/google/android/gms/internal/ads/zzcgr;->zzn:J

    move-object v0, v9

    move-object v1, p1

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/ads/zzcjk;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzig;IIJJ)V

    return-object v9
.end method

.method public final synthetic zzT(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzhi;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzhp;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzhp;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzhp;

    const/4 p1, 0x1

    if-eq p1, p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    move-object p2, p0

    :goto_0
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzhp;->zzf(Lcom/google/android/gms/internal/ads/zzig;)Lcom/google/android/gms/internal/ads/zzhp;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcjh;->zze:Lcom/google/android/gms/internal/ads/zzcgr;

    iget v1, p2, Lcom/google/android/gms/internal/ads/zzcgr;->zzd:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhp;->zzc(I)Lcom/google/android/gms/internal/ads/zzhp;

    iget p2, p2, Lcom/google/android/gms/internal/ads/zzcgr;->zze:I

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzhp;->zzd(I)Lcom/google/android/gms/internal/ads/zzhp;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzhp;->zze(Z)Lcom/google/android/gms/internal/ads/zzhp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhp;->zzg()Lcom/google/android/gms/internal/ads/zzht;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic zzU(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzhi;
    .locals 7

    const/4 v0, 0x1

    if-eq v0, p2, :cond_0

    const/4 p2, 0x0

    move-object v2, p2

    goto :goto_0

    :cond_0
    move-object v2, p0

    :goto_0
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcjh;->zze:Lcom/google/android/gms/internal/ads/zzcgr;

    new-instance v6, Lcom/google/android/gms/internal/ads/zzciq;

    iget v3, p2, Lcom/google/android/gms/internal/ads/zzcgr;->zzd:I

    iget v4, p2, Lcom/google/android/gms/internal/ads/zzcgr;->zze:I

    iget v5, p2, Lcom/google/android/gms/internal/ads/zzcgr;->zzh:I

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzciq;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzig;III)V

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, v6}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcjh;->zzu:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object v6
.end method

.method public final synthetic zzV(Lcom/google/android/gms/internal/ads/zzhh;)Lcom/google/android/gms/internal/ads/zzhi;
    .locals 8

    new-instance v7, Lcom/google/android/gms/internal/ads/zzciu;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzhh;->zza()Lcom/google/android/gms/internal/ads/zzhi;

    move-result-object v2

    new-instance v6, Lcom/google/android/gms/internal/ads/zzcjf;

    invoke-direct {v6, p0}, Lcom/google/android/gms/internal/ads/zzcjf;-><init>(Lcom/google/android/gms/internal/ads/zzcjh;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcjh;->zzo:Ljava/lang/String;

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzcjh;->zzp:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcjh;->zzb:Landroid/content/Context;

    move-object v0, v7

    move-object v5, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzciu;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzhi;Ljava/lang/String;ILcom/google/android/gms/internal/ads/zzig;Lcom/google/android/gms/internal/ads/zzcis;)V

    return-object v7
.end method

.method public final synthetic zzW(Landroid/os/Handler;Lcom/google/android/gms/internal/ads/zzadx;Lcom/google/android/gms/internal/ads/zzrk;Lcom/google/android/gms/internal/ads/zzyz;Lcom/google/android/gms/internal/ads/zzvr;)[Lcom/google/android/gms/internal/ads/zzmt;
    .locals 9

    new-instance p4, Lcom/google/android/gms/internal/ads/zzti;

    sget-object p5, Lcom/google/android/gms/internal/ads/zzve;->zzb:Lcom/google/android/gms/internal/ads/zzve;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzsx;

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzcjh;->zzb:Landroid/content/Context;

    invoke-direct {v0, v8}, Lcom/google/android/gms/internal/ads/zzsx;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzsx;->zza()Lcom/google/android/gms/internal/ads/zzte;

    move-result-object v7

    new-instance v2, Lcom/google/android/gms/internal/ads/zzuk;

    const/4 v0, 0x0

    invoke-direct {v2, v8, v0, v0}, Lcom/google/android/gms/internal/ads/zzuk;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzgtb;Lcom/google/android/gms/internal/ads/zzgtb;)V

    const/4 v4, 0x0

    move-object v0, p4

    move-object v1, v8

    move-object v3, p5

    move-object v5, p1

    move-object v6, p3

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzti;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzuq;Lcom/google/android/gms/internal/ads/zzve;ZLandroid/os/Handler;Lcom/google/android/gms/internal/ads/zzrk;Lcom/google/android/gms/internal/ads/zzrr;)V

    new-instance p3, Lcom/google/android/gms/internal/ads/zzack;

    invoke-direct {p3, v8}, Lcom/google/android/gms/internal/ads/zzack;-><init>(Landroid/content/Context;)V

    invoke-virtual {p3, p5}, Lcom/google/android/gms/internal/ads/zzack;->zza(Lcom/google/android/gms/internal/ads/zzve;)Lcom/google/android/gms/internal/ads/zzack;

    invoke-virtual {p3, p1}, Lcom/google/android/gms/internal/ads/zzack;->zzb(Landroid/os/Handler;)Lcom/google/android/gms/internal/ads/zzack;

    invoke-virtual {p3, p2}, Lcom/google/android/gms/internal/ads/zzack;->zzc(Lcom/google/android/gms/internal/ads/zzadx;)Lcom/google/android/gms/internal/ads/zzack;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzack;->zzd()Lcom/google/android/gms/internal/ads/zzacm;

    move-result-object p1

    const/4 p2, 0x2

    new-array p2, p2, [Lcom/google/android/gms/internal/ads/zzmt;

    const/4 p3, 0x0

    aput-object p4, p2, p3

    const/4 p3, 0x1

    aput-object p1, p2, p3

    return-object p2
.end method

.method public final synthetic zzX(ZJ)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjh;->zzk:Lcom/google/android/gms/internal/ads/zzcgi;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzcgi;->zzr(ZJ)V

    :cond_0
    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzhi;Lcom/google/android/gms/internal/ads/zzhm;Z)V
    .locals 0

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzhi;Lcom/google/android/gms/internal/ads/zzhm;Z)V
    .locals 1

    instance-of p2, p1, Lcom/google/android/gms/internal/ads/zzib;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcjh;->zzq:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzcjh;->zzs:Ljava/util/ArrayList;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzib;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit p2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    instance-of p2, p1, Lcom/google/android/gms/internal/ads/zzciu;

    if-eqz p2, :cond_1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzciu;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcjh;->zzt:Lcom/google/android/gms/internal/ads/zzciu;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcjh;->zzf:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcgs;

    sget-object p2, Lcom/google/android/gms/internal/ads/zzbhv;->zzcB:Lcom/google/android/gms/internal/ads/zzbhm;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbht;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/google/android/gms/internal/ads/zzbht;->zzd(Lcom/google/android/gms/internal/ads/zzbhm;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcjh;->zzt:Lcom/google/android/gms/internal/ads/zzciu;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzciu;->zzk()Z

    move-result p2

    if-eqz p2, :cond_1

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzcjh;->zzt:Lcom/google/android/gms/internal/ads/zzciu;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzciu;->zzm()Z

    move-result p3

    invoke-static {p3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p3

    const-string v0, "gcacheHit"

    invoke-virtual {p2, v0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzcjh;->zzt:Lcom/google/android/gms/internal/ads/zzciu;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzciu;->zzn()Z

    move-result p3

    invoke-static {p3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p3

    const-string v0, "gcacheDownloaded"

    invoke-virtual {p2, v0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p3, Lcom/google/android/gms/ads/internal/util/zzs;->zza:Lcom/google/android/gms/internal/ads/zzfzn;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcjg;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzcjg;-><init>(Lcom/google/android/gms/internal/ads/zzcgs;Ljava/util/Map;)V

    invoke-virtual {p3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzhi;Lcom/google/android/gms/internal/ads/zzhm;ZI)V
    .locals 0

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzcjh;->zzl:I

    add-int/2addr p1, p4

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzcjh;->zzl:I

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzhi;Lcom/google/android/gms/internal/ads/zzhm;Z)V
    .locals 0

    return-void
.end method

.method public final zze(Lcom/google/android/gms/internal/ads/zzng;I)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcjh;->zzk:Lcom/google/android/gms/internal/ads/zzcgi;

    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzcgi;->zzs(I)V

    :cond_0
    return-void
.end method

.method public final zzg(Lcom/google/android/gms/internal/ads/zzng;Lcom/google/android/gms/internal/ads/zzau;)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcjh;->zzk:Lcom/google/android/gms/internal/ads/zzcgi;

    if-eqz p1, :cond_0

    const-string v0, "onPlayerError"

    invoke-interface {p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzcgi;->zzu(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public final zzh(Lcom/google/android/gms/internal/ads/zzng;Lcom/google/android/gms/internal/ads/zzwk;Lcom/google/android/gms/internal/ads/zzwp;Ljava/io/IOException;Z)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcjh;->zzk:Lcom/google/android/gms/internal/ads/zzcgi;

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcjh;->zze:Lcom/google/android/gms/internal/ads/zzcgr;

    iget-boolean p2, p2, Lcom/google/android/gms/internal/ads/zzcgr;->zzj:Z

    if-eqz p2, :cond_0

    const-string p2, "onLoadException"

    invoke-interface {p1, p2, p4}, Lcom/google/android/gms/internal/ads/zzcgi;->zzv(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void

    :cond_0
    const-string p2, "onLoadError"

    invoke-interface {p1, p2, p4}, Lcom/google/android/gms/internal/ads/zzcgi;->zzu(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_1
    return-void
.end method

.method public final zzj()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjh;->zzr:Ljava/lang/Integer;

    return-object v0
.end method

.method public final zzk(Lcom/google/android/gms/internal/ads/zzng;Lcom/google/android/gms/internal/ads/zzv;Lcom/google/android/gms/internal/ads/zziv;)V
    .locals 2

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcjh;->zzf:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcgs;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzbhv;->zzcB:Lcom/google/android/gms/internal/ads/zzbhm;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbht;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/google/android/gms/internal/ads/zzbht;->zzd(Lcom/google/android/gms/internal/ads/zzbhm;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_3

    if-eqz p1, :cond_3

    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p2, Lcom/google/android/gms/internal/ads/zzv;->zzn:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "audioMime"

    invoke-virtual {p3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p2, Lcom/google/android/gms/internal/ads/zzv;->zzo:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v1, "audioSampleMime"

    invoke-virtual {p3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzv;->zzk:Ljava/lang/String;

    if-eqz p2, :cond_2

    const-string v0, "audioCodec"

    invoke-virtual {p3, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const-string p2, "onMetadataEvent"

    invoke-interface {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzbrr;->zze(Ljava/lang/String;Ljava/util/Map;)V

    :cond_3
    return-void
.end method

.method public final zzl(Lcom/google/android/gms/internal/ads/zzng;Lcom/google/android/gms/internal/ads/zzv;Lcom/google/android/gms/internal/ads/zziv;)V
    .locals 5

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcjh;->zzf:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcgs;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzbhv;->zzcB:Lcom/google/android/gms/internal/ads/zzbhm;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbht;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/google/android/gms/internal/ads/zzbht;->zzd(Lcom/google/android/gms/internal/ads/zzbhm;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_3

    if-eqz p1, :cond_3

    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    iget v0, p2, Lcom/google/android/gms/internal/ads/zzv;->zzz:F

    const-string v1, "frameRate"

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p2, Lcom/google/android/gms/internal/ads/zzv;->zzj:I

    const-string v1, "bitRate"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p2, Lcom/google/android/gms/internal/ads/zzv;->zzv:I

    iget v1, p2, Lcom/google/android/gms/internal/ads/zzv;->zzw:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/2addr v2, v3

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "x"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "resolution"

    invoke-virtual {p3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p2, Lcom/google/android/gms/internal/ads/zzv;->zzn:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "videoMime"

    invoke-virtual {p3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p2, Lcom/google/android/gms/internal/ads/zzv;->zzo:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v1, "videoSampleMime"

    invoke-virtual {p3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzv;->zzk:Ljava/lang/String;

    if-eqz p2, :cond_2

    const-string v0, "videoCodec"

    invoke-virtual {p3, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const-string p2, "onMetadataEvent"

    invoke-interface {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzbrr;->zze(Ljava/lang/String;Ljava/util/Map;)V

    :cond_3
    return-void
.end method

.method public final zzm(Lcom/google/android/gms/internal/ads/zzng;IJ)V
    .locals 0

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzcjh;->zzm:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzcjh;->zzm:I

    return-void
.end method

.method public final zzn(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcjh;->zzr:Ljava/lang/Integer;

    return-void
.end method

.method public final zzo(Lcom/google/android/gms/internal/ads/zzng;Ljava/lang/Object;J)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcjh;->zzk:Lcom/google/android/gms/internal/ads/zzcgi;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcgi;->zzD()V

    :cond_0
    return-void
.end method

.method public final zzp(Lcom/google/android/gms/internal/ads/zzng;Lcom/google/android/gms/internal/ads/zzbv;)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcjh;->zzk:Lcom/google/android/gms/internal/ads/zzcgi;

    if-eqz p1, :cond_0

    iget v0, p2, Lcom/google/android/gms/internal/ads/zzbv;->zzb:I

    iget p2, p2, Lcom/google/android/gms/internal/ads/zzbv;->zzc:I

    invoke-interface {p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzcgi;->zzt(II)V

    :cond_0
    return-void
.end method

.method public final zzq([Landroid/net/Uri;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/google/android/gms/internal/ads/zzcjh;->zzr([Landroid/net/Uri;Ljava/lang/String;Ljava/nio/ByteBuffer;Z)V

    return-void
.end method

.method public final zzr([Landroid/net/Uri;Ljava/lang/String;Ljava/nio/ByteBuffer;Z)V
    .locals 1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcjh;->zzh:Lcom/google/android/gms/internal/ads/zzjo;

    if-eqz p2, :cond_2

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcjh;->zzi:Ljava/nio/ByteBuffer;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzcjh;->zzj:Z

    array-length p2, p1

    const/4 p3, 0x1

    const/4 p4, 0x0

    if-ne p2, p3, :cond_0

    aget-object p1, p1, p4

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzcjh;->zzR(Landroid/net/Uri;)Lcom/google/android/gms/internal/ads/zzwv;

    move-result-object p1

    goto :goto_1

    :cond_0
    new-array p2, p2, [Lcom/google/android/gms/internal/ads/zzwv;

    move p3, p4

    :goto_0
    array-length v0, p1

    if-ge p3, v0, :cond_1

    aget-object v0, p1, p3

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzcjh;->zzR(Landroid/net/Uri;)Lcom/google/android/gms/internal/ads/zzwv;

    move-result-object v0

    aput-object v0, p2, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzxk;

    new-instance p3, Lcom/google/android/gms/internal/ads/zzwe;

    invoke-direct {p3}, Lcom/google/android/gms/internal/ads/zzwe;-><init>()V

    invoke-direct {p1, p4, p4, p3, p2}, Lcom/google/android/gms/internal/ads/zzxk;-><init>(ZZLcom/google/android/gms/internal/ads/zzwe;[Lcom/google/android/gms/internal/ads/zzwv;)V

    :goto_1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcjh;->zzh:Lcom/google/android/gms/internal/ads/zzjo;

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/zzjo;->zzG(Lcom/google/android/gms/internal/ads/zzwv;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcjh;->zzh:Lcom/google/android/gms/internal/ads/zzjo;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbb;->zzg()V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzcgj;->zzi()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    :cond_2
    return-void
.end method

.method public final zzs(Lcom/google/android/gms/internal/ads/zzcgi;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcjh;->zzk:Lcom/google/android/gms/internal/ads/zzcgi;

    return-void
.end method

.method public final zzt()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjh;->zzh:Lcom/google/android/gms/internal/ads/zzjo;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/ads/zzjo;->zzE(Lcom/google/android/gms/internal/ads/zzni;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjh;->zzh:Lcom/google/android/gms/internal/ads/zzjo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzjo;->zzH()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjh;->zzh:Lcom/google/android/gms/internal/ads/zzjo;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzcgj;->zzi()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    :cond_0
    return-void
.end method

.method public final zzu(Landroid/view/Surface;Z)V
    .locals 0

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcjh;->zzh:Lcom/google/android/gms/internal/ads/zzjo;

    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/zzbb;->zzC(Landroid/view/Surface;)V

    :cond_0
    return-void
.end method

.method public final zzv(FZ)V
    .locals 0

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcjh;->zzh:Lcom/google/android/gms/internal/ads/zzjo;

    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/zzbb;->zzB(F)V

    :cond_0
    return-void
.end method

.method public final zzw()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjh;->zzh:Lcom/google/android/gms/internal/ads/zzjo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbb;->zzo()V

    return-void
.end method

.method public final zzx(J)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjh;->zzh:Lcom/google/android/gms/internal/ads/zzjo;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbb;->zzb(J)V

    return-void
.end method

.method public final zzy(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjh;->zzc:Lcom/google/android/gms/internal/ads/zzcir;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcir;->zzm(I)V

    return-void
.end method

.method public final zzz(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjh;->zzc:Lcom/google/android/gms/internal/ads/zzcir;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcir;->zzn(I)V

    return-void
.end method
