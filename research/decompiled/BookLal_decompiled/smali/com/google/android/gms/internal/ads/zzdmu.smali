.class public final Lcom/google/android/gms/internal/ads/zzdmu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzddk;
.implements Lcom/google/android/gms/ads/internal/overlay/zzr;
.implements Lcom/google/android/gms/internal/ads/zzdcq;


# instance fields
.field zza:Lcom/google/android/gms/internal/ads/zzeks;

.field private final zzb:Landroid/content/Context;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzcjz;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzfjk;

.field private final zze:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzekq;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcjz;Lcom/google/android/gms/internal/ads/zzfjk;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/ads/zzekq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdmu;->zzb:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdmu;->zzc:Lcom/google/android/gms/internal/ads/zzcjz;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdmu;->zzd:Lcom/google/android/gms/internal/ads/zzfjk;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdmu;->zze:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzdmu;->zzf:Lcom/google/android/gms/internal/ads/zzekq;

    return-void
.end method

.method private final zzl()Z
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbhv;->zzgn:Lcom/google/android/gms/internal/ads/zzbhm;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbht;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbht;->zzd(Lcom/google/android/gms/internal/ads/zzbhm;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmu;->zzf:Lcom/google/android/gms/internal/ads/zzekq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzekq;->zzb()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final zzdT()V
    .locals 0

    return-void
.end method

.method public final zzdU(I)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdmu;->zza:Lcom/google/android/gms/internal/ads/zzeks;

    return-void
.end method

.method public final zzdo()V
    .locals 0

    return-void
.end method

.method public final zzdp()V
    .locals 0

    return-void
.end method

.method public final zzdq()V
    .locals 0

    return-void
.end method

.method public final zzdr()V
    .locals 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdmu;->zzl()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmu;->zzf:Lcom/google/android/gms/internal/ads/zzekq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzekq;->zzd()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmu;->zza:Lcom/google/android/gms/internal/ads/zzeks;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmu;->zzc:Lcom/google/android/gms/internal/ads/zzcjz;

    if-eqz v0, :cond_1

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbhv;->zzgq:Lcom/google/android/gms/internal/ads/zzbhm;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbht;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbht;->zzd(Lcom/google/android/gms/internal/ads/zzbhm;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lr/b;

    invoke-direct {v1}, Lr/k;-><init>()V

    const-string v2, "onSdkImpression"

    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzbrr;->zze(Ljava/lang/String;Ljava/util/Map;)V

    :cond_1
    return-void
.end method

.method public final zzdv()V
    .locals 0

    return-void
.end method

.method public final zzdw()V
    .locals 0

    return-void
.end method

.method public final zzdx()V
    .locals 0

    return-void
.end method

.method public final zzdy()V
    .locals 0

    return-void
.end method

.method public final zzdz()V
    .locals 0

    return-void
.end method

.method public final zzg()V
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzdmu;->zzd:Lcom/google/android/gms/internal/ads/zzfjk;

    iget-boolean v2, v1, Lcom/google/android/gms/internal/ads/zzfjk;->zzT:Z

    if-eqz v2, :cond_5

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzdmu;->zzc:Lcom/google/android/gms/internal/ads/zzcjz;

    if-eqz v2, :cond_5

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzdmu;->zzb:Landroid/content/Context;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzu()Lcom/google/android/gms/internal/ads/zzekn;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/google/android/gms/internal/ads/zzekn;->zza(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzdmu;->zzl()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzdmu;->zzf:Lcom/google/android/gms/internal/ads/zzekq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzekq;->zzc()V

    return-void

    :cond_0
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzdmu;->zze:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget v4, v3, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->buddyApkVersion:I

    iget v3, v3, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->clientJarVersion:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    add-int/2addr v5, v7

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    new-instance v8, Ljava/lang/StringBuilder;

    add-int/2addr v5, v6

    invoke-direct {v8, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "."

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzfjk;->zzV:Lcom/google/android/gms/internal/ads/zzfkg;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzfkg;->zza()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzfkg;->zzc()I

    move-result v3

    if-ne v3, v7, :cond_1

    sget-object v3, Lcom/google/android/gms/internal/ads/zzeko;->zzc:Lcom/google/android/gms/internal/ads/zzeko;

    sget-object v4, Lcom/google/android/gms/internal/ads/zzekp;->zzb:Lcom/google/android/gms/internal/ads/zzekp;

    move-object/from16 v16, v3

    move-object v15, v4

    goto :goto_1

    :cond_1
    iget v3, v1, Lcom/google/android/gms/internal/ads/zzfjk;->zzY:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    sget-object v3, Lcom/google/android/gms/internal/ads/zzekp;->zzd:Lcom/google/android/gms/internal/ads/zzekp;

    goto :goto_0

    :cond_2
    sget-object v3, Lcom/google/android/gms/internal/ads/zzekp;->zza:Lcom/google/android/gms/internal/ads/zzekp;

    :goto_0
    sget-object v4, Lcom/google/android/gms/internal/ads/zzeko;->zza:Lcom/google/android/gms/internal/ads/zzeko;

    move-object v15, v3

    move-object/from16 v16, v4

    :goto_1
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzfjk;->zzal:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzu()Lcom/google/android/gms/internal/ads/zzekn;

    move-result-object v9

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzcjz;->zzD()Landroid/webkit/WebView;

    move-result-object v11

    const-string v12, ""

    const-string v13, "javascript"

    move-object/from16 v17, v1

    invoke-interface/range {v9 .. v17}, Lcom/google/android/gms/internal/ads/zzekn;->zzc(Ljava/lang/String;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzekp;Lcom/google/android/gms/internal/ads/zzeko;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzeks;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzdmu;->zza:Lcom/google/android/gms/internal/ads/zzeks;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzeks;->zza()Lcom/google/android/gms/internal/ads/zzftl;

    move-result-object v1

    sget-object v3, Lcom/google/android/gms/internal/ads/zzbhv;->zzgm:Lcom/google/android/gms/internal/ads/zzbhm;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbht;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzbht;->zzd(Lcom/google/android/gms/internal/ads/zzbhm;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzu()Lcom/google/android/gms/internal/ads/zzekn;

    move-result-object v3

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzcjz;->zzD()Landroid/webkit/WebView;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Lcom/google/android/gms/internal/ads/zzekn;->zzh(Lcom/google/android/gms/internal/ads/zzftl;Landroid/view/View;)V

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzcjz;->zzF()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzu()Lcom/google/android/gms/internal/ads/zzekn;

    move-result-object v5

    invoke-interface {v5, v1, v4}, Lcom/google/android/gms/internal/ads/zzekn;->zzg(Lcom/google/android/gms/internal/ads/zzftl;Landroid/view/View;)V

    goto :goto_2

    :cond_3
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzcjz;->zzE()Landroid/view/View;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzu()Lcom/google/android/gms/internal/ads/zzekn;

    move-result-object v4

    invoke-interface {v4, v1, v3}, Lcom/google/android/gms/internal/ads/zzekn;->zzh(Lcom/google/android/gms/internal/ads/zzftl;Landroid/view/View;)V

    :cond_4
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzdmu;->zza:Lcom/google/android/gms/internal/ads/zzeks;

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/zzcjz;->zzak(Lcom/google/android/gms/internal/ads/zzeks;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzu()Lcom/google/android/gms/internal/ads/zzekn;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/google/android/gms/internal/ads/zzekn;->zze(Lcom/google/android/gms/internal/ads/zzftl;)V

    new-instance v1, Lr/b;

    invoke-direct {v1}, Lr/k;-><init>()V

    const-string v3, "onSdkLoaded"

    invoke-interface {v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzbrr;->zze(Ljava/lang/String;Ljava/util/Map;)V

    :cond_5
    return-void
.end method

.method public final zzh()V
    .locals 3

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbhv;->zzgq:Lcom/google/android/gms/internal/ads/zzbhm;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbht;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbht;->zzd(Lcom/google/android/gms/internal/ads/zzbhm;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmu;->zzc:Lcom/google/android/gms/internal/ads/zzcjz;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdmu;->zza:Lcom/google/android/gms/internal/ads/zzeks;

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdmu;->zzl()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdmu;->zza:Lcom/google/android/gms/internal/ads/zzeks;

    if-eqz v1, :cond_1

    new-instance v1, Lr/b;

    invoke-direct {v1}, Lr/k;-><init>()V

    const-string v2, "onSdkImpression"

    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzbrr;->zze(Ljava/lang/String;Ljava/util/Map;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmu;->zzf:Lcom/google/android/gms/internal/ads/zzekq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzekq;->zzd()V

    :cond_2
    return-void
.end method
