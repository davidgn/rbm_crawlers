.class public final Lcom/google/android/gms/internal/ads/zzchk;
.super Lcom/google/android/gms/internal/ads/zzcfy;
.source "SourceFile"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Lcom/google/android/gms/internal/ads/zzcgi;


# instance fields
.field private final zzc:Lcom/google/android/gms/internal/ads/zzcgs;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzcgt;

.field private final zze:Lcom/google/android/gms/internal/ads/zzcgr;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzdyq;

.field private zzg:Lcom/google/android/gms/internal/ads/zzcfx;

.field private zzh:Landroid/view/Surface;

.field private zzi:Lcom/google/android/gms/internal/ads/zzcgj;

.field private zzj:Ljava/lang/String;

.field private zzk:[Ljava/lang/String;

.field private zzl:Z

.field private zzm:I

.field private zzn:Lcom/google/android/gms/internal/ads/zzcgq;

.field private final zzo:Z

.field private zzp:Z

.field private zzq:Z

.field private zzr:I

.field private zzs:I

.field private zzt:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcgt;Lcom/google/android/gms/internal/ads/zzcgs;ZZLcom/google/android/gms/internal/ads/zzcgr;Lcom/google/android/gms/internal/ads/zzdyq;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzcfy;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzchk;->zzm:I

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzchk;->zzc:Lcom/google/android/gms/internal/ads/zzcgs;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzchk;->zzd:Lcom/google/android/gms/internal/ads/zzcgt;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzchk;->zzo:Z

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzchk;->zze:Lcom/google/android/gms/internal/ads/zzcgr;

    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/ads/zzcgt;->zza(Lcom/google/android/gms/internal/ads/zzcfy;)V

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzchk;->zzf:Lcom/google/android/gms/internal/ads/zzdyq;

    return-void
.end method

.method private final zzT()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzchk;->zzi:Lcom/google/android/gms/internal/ads/zzcgj;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcgj;->zzB()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzchk;->zzl:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final zzU()Z
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzchk;->zzT()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzchk;->zzm:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final zzV(ZLjava/lang/Integer;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzchk;->zzi:Lcom/google/android/gms/internal/ads/zzcgj;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzcgj;->zzn(Ljava/lang/Integer;)V

    return-void

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzchk;->zzj:Ljava/lang/String;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzchk;->zzh:Landroid/view/Surface;

    if-nez v1, :cond_2

    goto/16 :goto_4

    :cond_2
    if-eqz p1, :cond_4

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzchk;->zzT()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcgj;->zzw()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzchk;->zzW()V

    goto :goto_1

    :cond_3
    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p1, "No valid ExoPlayerAdapter exists when switch source."

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzi(Ljava/lang/String;)V

    return-void

    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzchk;->zzj:Ljava/lang/String;

    const-string v0, "cache:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzchk;->zzc:Lcom/google/android/gms/internal/ads/zzcgs;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzchk;->zzj:Ljava/lang/String;

    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/ads/zzcgs;->zzr(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzcif;

    move-result-object p1

    instance-of v1, p1, Lcom/google/android/gms/internal/ads/zzcio;

    if-eqz v1, :cond_6

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcio;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcio;->zza()Lcom/google/android/gms/internal/ads/zzcgj;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzchk;->zzi:Lcom/google/android/gms/internal/ads/zzcgj;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzcgj;->zzn(Ljava/lang/Integer;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzchk;->zzi:Lcom/google/android/gms/internal/ads/zzcgj;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcgj;->zzB()Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_3

    :cond_5
    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p1, "Precached video player has been released."

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzi(Ljava/lang/String;)V

    return-void

    :cond_6
    instance-of v1, p1, Lcom/google/android/gms/internal/ads/zzcil;

    if-eqz v1, :cond_8

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcil;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzchk;->zzF()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcil;->zzu()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcil;->zzt()Z

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcil;->zzs()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_7

    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p1, "Stream cache URL is null."

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzi(Ljava/lang/String;)V

    return-void

    :cond_7
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/zzchk;->zzE(Ljava/lang/Integer;)Lcom/google/android/gms/internal/ads/zzcgj;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzchk;->zzi:Lcom/google/android/gms/internal/ads/zzcgj;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    filled-new-array {p1}, [Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p2, p1, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzcgj;->zzr([Landroid/net/Uri;Ljava/lang/String;Ljava/nio/ByteBuffer;Z)V

    goto :goto_3

    :cond_8
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzchk;->zzj:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget p2, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p2, "Stream cache miss: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzi(Ljava/lang/String;)V

    return-void

    :cond_9
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/zzchk;->zzE(Ljava/lang/Integer;)Lcom/google/android/gms/internal/ads/zzcgj;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzchk;->zzi:Lcom/google/android/gms/internal/ads/zzcgj;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzchk;->zzF()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzchk;->zzk:[Ljava/lang/String;

    array-length p2, p2

    new-array p2, p2, [Landroid/net/Uri;

    move v1, v0

    :goto_2
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzchk;->zzk:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_a

    aget-object v2, v2, v1

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    aput-object v2, p2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_a
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzchk;->zzi:Lcom/google/android/gms/internal/ads/zzcgj;

    invoke-virtual {v1, p2, p1}, Lcom/google/android/gms/internal/ads/zzcgj;->zzq([Landroid/net/Uri;Ljava/lang/String;)V

    :goto_3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzchk;->zzi:Lcom/google/android/gms/internal/ads/zzcgj;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/zzcgj;->zzs(Lcom/google/android/gms/internal/ads/zzcgi;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzchk;->zzh:Landroid/view/Surface;

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzchk;->zzX(Landroid/view/Surface;Z)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzchk;->zzi:Lcom/google/android/gms/internal/ads/zzcgj;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcgj;->zzB()Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzchk;->zzi:Lcom/google/android/gms/internal/ads/zzcgj;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcgj;->zzC()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzchk;->zzm:I

    const/4 p2, 0x3

    if-ne p1, p2, :cond_b

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzchk;->zzY()V

    :cond_b
    :goto_4
    return-void
.end method

.method private final zzW()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzchk;->zzi:Lcom/google/android/gms/internal/ads/zzcgj;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzchk;->zzX(Landroid/view/Surface;Z)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzchk;->zzi:Lcom/google/android/gms/internal/ads/zzcgj;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzcgj;->zzs(Lcom/google/android/gms/internal/ads/zzcgi;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzchk;->zzi:Lcom/google/android/gms/internal/ads/zzcgj;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzcgj;->zzt()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzchk;->zzi:Lcom/google/android/gms/internal/ads/zzcgj;

    :cond_0
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzchk;->zzm:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzchk;->zzl:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzchk;->zzp:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzchk;->zzq:Z

    :cond_1
    return-void
.end method

.method private final zzX(Landroid/view/Surface;Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzchk;->zzi:Lcom/google/android/gms/internal/ads/zzcgj;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzcgj;->zzu(Landroid/view/Surface;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    sget p2, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p2, ""

    invoke-static {p2, p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_0
    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p1, "Trying to set surface before player is initialized."

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzi(Ljava/lang/String;)V

    return-void
.end method

.method private final zzY()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzchk;->zzp:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzchk;->zzp:Z

    sget-object v0, Lcom/google/android/gms/ads/internal/util/zzs;->zza:Lcom/google/android/gms/internal/ads/zzfzn;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcgx;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzcgx;-><init>(Lcom/google/android/gms/internal/ads/zzchk;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzchk;->zzq()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzchk;->zzd:Lcom/google/android/gms/internal/ads/zzcgt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcgt;->zzb()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzchk;->zzq:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzchk;->zze()V

    :cond_1
    :goto_0
    return-void
.end method

.method private static zzZ(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;
    .locals 5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v3, v1

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v3, v2

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "/"

    const-string v2, ":"

    invoke-static {v4, p0, v1, v0, v2}, Le1/i;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final zzaa()V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzchk;->zzr:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzchk;->zzs:I

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzchk;->zzab(II)V

    return-void
.end method

.method private final zzab(II)V
    .locals 0

    if-lez p2, :cond_0

    int-to-float p1, p1

    int-to-float p2, p2

    div-float/2addr p1, p2

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_0
    iget p2, p0, Lcom/google/android/gms/internal/ads/zzchk;->zzt:F

    cmpl-float p2, p2, p1

    if-eqz p2, :cond_1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzchk;->zzt:F

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_1
    return-void
.end method

.method private final zzac()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzchk;->zzi:Lcom/google/android/gms/internal/ads/zzcgj;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcgj;->zzM(Z)V

    :cond_0
    return-void
.end method

.method private final zzad()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzchk;->zzi:Lcom/google/android/gms/internal/ads/zzcgj;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcgj;->zzM(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    invoke-virtual {p0, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    return-void
.end method

.method public final onMeasure(II)V
    .locals 4

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzchk;->zzt:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzchk;->zzn:Lcom/google/android/gms/internal/ads/zzcgq;

    if-nez v1, :cond_1

    int-to-float v1, p1

    int-to-float v2, p2

    div-float v2, v1, v2

    cmpl-float v3, v0, v2

    if-lez v3, :cond_0

    div-float/2addr v1, v0

    float-to-int p2, v1

    :cond_0
    cmpg-float v1, v0, v2

    if-gez v1, :cond_1

    int-to-float p1, p2

    mul-float/2addr p1, v0

    float-to-int p1, p1

    :cond_1
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzchk;->zzn:Lcom/google/android/gms/internal/ads/zzcgq;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzcgq;->zzc(II)V

    :cond_2
    return-void
.end method

.method public final onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 4

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzchk;->zzo:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbhv;->zzoJ:Lcom/google/android/gms/internal/ads/zzbhm;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbht;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzbht;->zzd(Lcom/google/android/gms/internal/ads/zzbhm;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzchk;->zzf:Lcom/google/android/gms/internal/ads/zzdyq;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdyq;->zza()Lcom/google/android/gms/internal/ads/zzdyp;

    move-result-object v0

    const-string v2, "action"

    const-string v3, "svp_aepv"

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzdyp;->zzc(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdyp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdyp;->zzd()V

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcgq;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzcgq;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzchk;->zzn:Lcom/google/android/gms/internal/ads/zzcgq;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzcgq;->zzb(Landroid/graphics/SurfaceTexture;II)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzchk;->zzn:Lcom/google/android/gms/internal/ads/zzcgq;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcgq;->zze()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-eqz v0, :cond_1

    move-object p1, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzchk;->zzn:Lcom/google/android/gms/internal/ads/zzcgq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcgq;->zzd()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzchk;->zzn:Lcom/google/android/gms/internal/ads/zzcgq;

    :cond_2
    :goto_0
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzchk;->zzh:Landroid/view/Surface;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzchk;->zzi:Lcom/google/android/gms/internal/ads/zzcgj;

    if-nez p1, :cond_3

    const/4 p1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/ads/zzchk;->zzV(ZLjava/lang/Integer;)V

    goto :goto_1

    :cond_3
    const/4 p1, 0x1

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzchk;->zzX(Landroid/view/Surface;Z)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzchk;->zze:Lcom/google/android/gms/internal/ads/zzcgr;

    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/zzcgr;->zza:Z

    if-nez p1, :cond_4

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzchk;->zzac()V

    :cond_4
    :goto_1
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzchk;->zzr:I

    if-eqz p1, :cond_6

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzchk;->zzs:I

    if-nez p1, :cond_5

    goto :goto_2

    :cond_5
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzchk;->zzaa()V

    goto :goto_3

    :cond_6
    :goto_2
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/ads/zzchk;->zzab(II)V

    :goto_3
    sget-object p1, Lcom/google/android/gms/ads/internal/util/zzs;->zza:Lcom/google/android/gms/internal/ads/zzfzn;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzche;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/ads/zzche;-><init>(Lcom/google/android/gms/internal/ads/zzchk;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzchk;->zzf()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzchk;->zzn:Lcom/google/android/gms/internal/ads/zzcgq;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcgq;->zzd()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzchk;->zzn:Lcom/google/android/gms/internal/ads/zzcgq;

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzchk;->zzi:Lcom/google/android/gms/internal/ads/zzcgj;

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzchk;->zzad()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzchk;->zzh:Landroid/view/Surface;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/Surface;->release()V

    :cond_1
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzchk;->zzh:Landroid/view/Surface;

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzchk;->zzX(Landroid/view/Surface;Z)V

    :cond_2
    sget-object p1, Lcom/google/android/gms/ads/internal/util/zzs;->zza:Lcom/google/android/gms/internal/ads/zzfzn;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzchg;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzchg;-><init>(Lcom/google/android/gms/internal/ads/zzchk;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return v1
.end method

.method public final onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzchk;->zzn:Lcom/google/android/gms/internal/ads/zzcgq;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzcgq;->zzc(II)V

    :cond_0
    sget-object p1, Lcom/google/android/gms/ads/internal/util/zzs;->zza:Lcom/google/android/gms/internal/ads/zzfzn;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzchf;

    invoke-direct {v0, p0, p2, p3}, Lcom/google/android/gms/internal/ads/zzchf;-><init>(Lcom/google/android/gms/internal/ads/zzchk;II)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzchk;->zzd:Lcom/google/android/gms/internal/ads/zzcgt;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzcgt;->zzd(Lcom/google/android/gms/internal/ads/zzcfy;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzchk;->zzg:Lcom/google/android/gms/internal/ads/zzcfx;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcfy;->zza:Lcom/google/android/gms/internal/ads/zzcgm;

    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzcgm;->zzb(Landroid/graphics/SurfaceTexture;Lcom/google/android/gms/internal/ads/zzcfx;)V

    return-void
.end method

.method public final onWindowVisibilityChanged(I)V
    .locals 2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x2e

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "AdExoPlayerView3 window visibility changed to "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/ads/internal/util/zzs;->zza:Lcom/google/android/gms/internal/ads/zzfzn;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzchh;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzchh;-><init>(Lcom/google/android/gms/internal/ads/zzchk;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    return-void
.end method

.method public final zzA(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzchk;->zzi:Lcom/google/android/gms/internal/ads/zzcgj;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcgj;->zzy(I)V

    :cond_0
    return-void
.end method

.method public final zzB(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzchk;->zzi:Lcom/google/android/gms/internal/ads/zzcgj;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcgj;->zzz(I)V

    :cond_0
    return-void
.end method

.method public final zzC(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzchk;->zzi:Lcom/google/android/gms/internal/ads/zzcgj;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcgj;->zzA(I)V

    :cond_0
    return-void
.end method

.method public final zzD()V
    .locals 2

    sget-object v0, Lcom/google/android/gms/ads/internal/util/zzs;->zza:Lcom/google/android/gms/internal/ads/zzfzn;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcgz;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzcgz;-><init>(Lcom/google/android/gms/internal/ads/zzchk;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final zzE(Ljava/lang/Integer;)Lcom/google/android/gms/internal/ads/zzcgj;
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcjh;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzchk;->zze:Lcom/google/android/gms/internal/ads/zzcgr;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzchk;->zzc:Lcom/google/android/gms/internal/ads/zzcgs;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzcgs;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3, v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzcjh;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcgr;Lcom/google/android/gms/internal/ads/zzcgs;Ljava/lang/Integer;)V

    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p1, "ExoPlayerAdapter initialized."

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzh(Ljava/lang/String;)V

    return-object v0
.end method

.method public final zzF()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzchk;->zzc:Lcom/google/android/gms/internal/ads/zzcgs;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzc()Lcom/google/android/gms/ads/internal/util/zzs;

    move-result-object v1

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcgs;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcgs;->zzs()Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->afmaVersion:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/ads/internal/util/zzs;->zze(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic zzG()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfy;->zzb:Lcom/google/android/gms/internal/ads/zzcgw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcgw;->zzc()F

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzchk;->zzi:Lcom/google/android/gms/internal/ads/zzcgj;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzcgj;->zzv(FZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget v1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string v1, ""

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_0
    sget v0, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string v0, "Trying to set volume before player is initialized."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzi(Ljava/lang/String;)V

    return-void
.end method

.method public final synthetic zzH()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzchk;->zzg:Lcom/google/android/gms/internal/ads/zzcfx;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcfx;->zzb()V

    :cond_0
    return-void
.end method

.method public final synthetic zzI()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzchk;->zzg:Lcom/google/android/gms/internal/ads/zzcfx;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcfx;->zze()V

    :cond_0
    return-void
.end method

.method public final synthetic zzJ(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzchk;->zzg:Lcom/google/android/gms/internal/ads/zzcfx;

    if-eqz v0, :cond_0

    const-string v1, "ExoPlayerAdapter error"

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzcfx;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final synthetic zzK()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzchk;->zzg:Lcom/google/android/gms/internal/ads/zzcfx;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcfx;->zzc()V

    :cond_0
    return-void
.end method

.method public final synthetic zzL()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzchk;->zzg:Lcom/google/android/gms/internal/ads/zzcfx;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcfx;->zzd()V

    :cond_0
    return-void
.end method

.method public final synthetic zzM()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzchk;->zzg:Lcom/google/android/gms/internal/ads/zzcfx;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcfx;->zza()V

    :cond_0
    return-void
.end method

.method public final synthetic zzN(II)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzchk;->zzg:Lcom/google/android/gms/internal/ads/zzcfx;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzcfx;->zzj(II)V

    :cond_0
    return-void
.end method

.method public final synthetic zzO()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzchk;->zzg:Lcom/google/android/gms/internal/ads/zzcfx;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcfx;->zzh()V

    :cond_0
    return-void
.end method

.method public final synthetic zzP(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzchk;->zzg:Lcom/google/android/gms/internal/ads/zzcfx;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzcfx;->onWindowVisibilityChanged(I)V

    :cond_0
    return-void
.end method

.method public final synthetic zzQ(ZJ)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzchk;->zzc:Lcom/google/android/gms/internal/ads/zzcgs;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzcgs;->zzu(ZJ)V

    return-void
.end method

.method public final synthetic zzR(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzchk;->zzg:Lcom/google/android/gms/internal/ads/zzcfx;

    if-eqz v0, :cond_0

    const-string v1, "ExoPlayerAdapter exception"

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzcfx;->zzg(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final synthetic zzS()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzchk;->zzg:Lcom/google/android/gms/internal/ads/zzcfx;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcfx;->zzk()V

    :cond_0
    return-void
.end method

.method public final zza()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzchk;->zzo:Z

    if-eq v0, v1, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    const-string v0, " spherical"

    :goto_0
    const-string v1, "ExoPlayer/2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzcfx;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzchk;->zzg:Lcom/google/android/gms/internal/ads/zzcfx;

    return-void
.end method

.method public final zzc(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/google/android/gms/internal/ads/zzchk;->zzx(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_0
    return-void
.end method

.method public final zzd()V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzchk;->zzT()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzchk;->zzi:Lcom/google/android/gms/internal/ads/zzcgj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcgj;->zzw()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzchk;->zzW()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzchk;->zzd:Lcom/google/android/gms/internal/ads/zzcgt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcgt;->zzf()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcfy;->zzb:Lcom/google/android/gms/internal/ads/zzcgw;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcgw;->zze()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcgt;->zzc()V

    return-void
.end method

.method public final zze()V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzchk;->zzU()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzchk;->zze:Lcom/google/android/gms/internal/ads/zzcgr;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzcgr;->zza:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzchk;->zzac()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzchk;->zzi:Lcom/google/android/gms/internal/ads/zzcgj;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcgj;->zzE(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzchk;->zzd:Lcom/google/android/gms/internal/ads/zzcgt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcgt;->zze()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfy;->zzb:Lcom/google/android/gms/internal/ads/zzcgw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcgw;->zzd()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfy;->zza:Lcom/google/android/gms/internal/ads/zzcgm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcgm;->zza()V

    sget-object v0, Lcom/google/android/gms/ads/internal/util/zzs;->zza:Lcom/google/android/gms/internal/ads/zzfzn;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzchc;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzchc;-><init>(Lcom/google/android/gms/internal/ads/zzchk;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_1
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzchk;->zzq:Z

    return-void
.end method

.method public final zzf()V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzchk;->zzU()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzchk;->zze:Lcom/google/android/gms/internal/ads/zzcgr;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzcgr;->zza:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzchk;->zzad()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzchk;->zzi:Lcom/google/android/gms/internal/ads/zzcgj;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcgj;->zzE(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzchk;->zzd:Lcom/google/android/gms/internal/ads/zzcgt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcgt;->zzf()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfy;->zzb:Lcom/google/android/gms/internal/ads/zzcgw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcgw;->zze()V

    sget-object v0, Lcom/google/android/gms/ads/internal/util/zzs;->zza:Lcom/google/android/gms/internal/ads/zzfzn;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzchd;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzchd;-><init>(Lcom/google/android/gms/internal/ads/zzchk;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public final zzg()I
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzchk;->zzU()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzchk;->zzi:Lcom/google/android/gms/internal/ads/zzcgj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcgj;->zzH()J

    move-result-wide v0

    long-to-int v0, v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzh()I
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzchk;->zzU()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzchk;->zzi:Lcom/google/android/gms/internal/ads/zzcgj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcgj;->zzD()J

    move-result-wide v0

    long-to-int v0, v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzi(I)V
    .locals 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzchk;->zzU()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzchk;->zzi:Lcom/google/android/gms/internal/ads/zzcgj;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzcgj;->zzx(J)V

    :cond_0
    return-void
.end method

.method public final zzj(FF)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzchk;->zzn:Lcom/google/android/gms/internal/ads/zzcgq;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzcgq;->zzf(FF)V

    :cond_0
    return-void
.end method

.method public final zzk()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzchk;->zzr:I

    return v0
.end method

.method public final zzl()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzchk;->zzs:I

    return v0
.end method

.method public final zzm()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzchk;->zzi:Lcom/google/android/gms/internal/ads/zzcgj;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcgj;->zzI()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final zzn()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzchk;->zzi:Lcom/google/android/gms/internal/ads/zzcgj;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcgj;->zzJ()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final zzo()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzchk;->zzi:Lcom/google/android/gms/internal/ads/zzcgj;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcgj;->zzK()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final zzp()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzchk;->zzi:Lcom/google/android/gms/internal/ads/zzcgj;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcgj;->zzL()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public final zzq()V
    .locals 2

    sget-object v0, Lcom/google/android/gms/ads/internal/util/zzs;->zza:Lcom/google/android/gms/internal/ads/zzfzn;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzchj;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzchj;-><init>(Lcom/google/android/gms/internal/ads/zzchk;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final zzr(ZJ)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzchk;->zzc:Lcom/google/android/gms/internal/ads/zzcgs;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/ads/zzcew;->zzf:Lcom/google/android/gms/internal/ads/zzhbf;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzchi;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzchi;-><init>(Lcom/google/android/gms/internal/ads/zzchk;ZJ)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final zzs(I)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzchk;->zzm:I

    if-eq v0, p1, :cond_3

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzchk;->zzm:I

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzchk;->zze:Lcom/google/android/gms/internal/ads/zzcgr;

    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/zzcgr;->zza:Z

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzchk;->zzad()V

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzchk;->zzd:Lcom/google/android/gms/internal/ads/zzcgt;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcgt;->zzf()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcfy;->zzb:Lcom/google/android/gms/internal/ads/zzcgw;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcgw;->zze()V

    sget-object p1, Lcom/google/android/gms/ads/internal/util/zzs;->zza:Lcom/google/android/gms/internal/ads/zzfzn;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcha;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzcha;-><init>(Lcom/google/android/gms/internal/ads/zzchk;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzchk;->zzY()V

    :cond_3
    :goto_0
    return-void
.end method

.method public final zzt(II)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzchk;->zzr:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzchk;->zzs:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzchk;->zzaa()V

    return-void
.end method

.method public final zzu(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzchk;->zzZ(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "ExoPlayerAdapter error: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzi(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzchk;->zzl:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzchk;->zze:Lcom/google/android/gms/internal/ads/zzcgr;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzcgr;->zza:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzchk;->zzad()V

    :cond_0
    sget-object v0, Lcom/google/android/gms/ads/internal/util/zzs;->zza:Lcom/google/android/gms/internal/ads/zzfzn;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzchb;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzchb;-><init>(Lcom/google/android/gms/internal/ads/zzchk;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const-string p1, "AdExoPlayerView.onError"

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzh()Lcom/google/android/gms/internal/ads/zzcei;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Lcom/google/android/gms/internal/ads/zzcei;->zzh(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public final zzv(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2

    const-string p1, "onLoadException"

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzchk;->zzZ(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "ExoPlayerAdapter exception: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzi(Ljava/lang/String;)V

    const-string v0, "AdExoPlayerView.onException"

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzh()Lcom/google/android/gms/internal/ads/zzcei;

    move-result-object v1

    invoke-virtual {v1, p2, v0}, Lcom/google/android/gms/internal/ads/zzcei;->zzh(Ljava/lang/Throwable;Ljava/lang/String;)V

    sget-object p2, Lcom/google/android/gms/ads/internal/util/zzs;->zza:Lcom/google/android/gms/internal/ads/zzfzn;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcgy;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzcgy;-><init>(Lcom/google/android/gms/internal/ads/zzchk;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final zzw()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzchk;->zzi:Lcom/google/android/gms/internal/ads/zzcgj;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcgj;->zzj()Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzx(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzchk;->zzk:[Ljava/lang/String;

    goto :goto_0

    :cond_1
    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzchk;->zzk:[Ljava/lang/String;

    :goto_0
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzchk;->zzj:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzchk;->zze:Lcom/google/android/gms/internal/ads/zzcgr;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzcgr;->zzk:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzchk;->zzm:I

    const/4 v0, 0x4

    if-ne p2, v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzchk;->zzj:Ljava/lang/String;

    invoke-direct {p0, v1, p3}, Lcom/google/android/gms/internal/ads/zzchk;->zzV(ZLjava/lang/Integer;)V

    return-void
.end method

.method public final zzy(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzchk;->zzi:Lcom/google/android/gms/internal/ads/zzcgj;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcgj;->zzF(I)V

    :cond_0
    return-void
.end method

.method public final zzz(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzchk;->zzi:Lcom/google/android/gms/internal/ads/zzcgj;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcgj;->zzG(I)V

    :cond_0
    return-void
.end method
