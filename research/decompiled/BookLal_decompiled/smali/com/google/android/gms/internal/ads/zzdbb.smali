.class public final Lcom/google/android/gms/internal/ads/zzdbb;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzfop;

.field private final zzb:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field private final zzc:Landroid/content/pm/ApplicationInfo;

.field private final zzd:Ljava/lang/String;

.field private final zze:Ljava/util/List;

.field private final zzf:Landroid/content/pm/PackageInfo;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzilo;

.field private final zzh:Ljava/lang/String;

.field private final zzi:Lcom/google/android/gms/internal/ads/zzfbs;

.field private final zzj:Lcom/google/android/gms/ads/internal/util/zzg;

.field private final zzk:Lcom/google/android/gms/internal/ads/zzfkd;

.field private final zzl:Lcom/google/android/gms/internal/ads/zzdhp;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfop;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Ljava/util/List;Landroid/content/pm/PackageInfo;Lcom/google/android/gms/internal/ads/zzilo;Lcom/google/android/gms/ads/internal/util/zzg;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzfbs;Lcom/google/android/gms/internal/ads/zzfkd;Lcom/google/android/gms/internal/ads/zzdhp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdbb;->zza:Lcom/google/android/gms/internal/ads/zzfop;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdbb;->zzb:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdbb;->zzc:Landroid/content/pm/ApplicationInfo;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdbb;->zzd:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzdbb;->zze:Ljava/util/List;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzdbb;->zzf:Landroid/content/pm/PackageInfo;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzdbb;->zzg:Lcom/google/android/gms/internal/ads/zzilo;

    iput-object p9, p0, Lcom/google/android/gms/internal/ads/zzdbb;->zzh:Ljava/lang/String;

    iput-object p10, p0, Lcom/google/android/gms/internal/ads/zzdbb;->zzi:Lcom/google/android/gms/internal/ads/zzfbs;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzdbb;->zzj:Lcom/google/android/gms/ads/internal/util/zzg;

    iput-object p11, p0, Lcom/google/android/gms/internal/ads/zzdbb;->zzk:Lcom/google/android/gms/internal/ads/zzfkd;

    iput-object p12, p0, Lcom/google/android/gms/internal/ads/zzdbb;->zzl:Lcom/google/android/gms/internal/ads/zzdhp;

    return-void
.end method


# virtual methods
.method public final zza(Landroid/os/Bundle;)LN2/o;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdbb;->zzl:Lcom/google/android/gms/internal/ads/zzdhp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdhp;->zza()V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzfoj;->zza:Lcom/google/android/gms/internal/ads/zzfoj;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdbb;->zza:Lcom/google/android/gms/internal/ads/zzfop;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdbb;->zzi:Lcom/google/android/gms/internal/ads/zzfbs;

    invoke-virtual {v3, v2, p1}, Lcom/google/android/gms/internal/ads/zzfbs;->zza(Ljava/lang/Object;Landroid/os/Bundle;)LN2/o;

    move-result-object p1

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzfoa;->zza(LN2/o;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzfoh;)Lcom/google/android/gms/internal/ads/zzfog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfog;->zzi()Lcom/google/android/gms/internal/ads/zzfnw;

    move-result-object p1

    return-object p1
.end method

.method public final zzb()LN2/o;
    .locals 7

    const/4 v0, 0x0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbhv;->zzcN:Lcom/google/android/gms/internal/ads/zzbhm;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbht;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzbht;->zzd(Lcom/google/android/gms/internal/ads/zzbhm;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdbb;->zzk:Lcom/google/android/gms/internal/ads/zzfkd;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzfkd;->zzt:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_0
    const-string v2, "ls"

    invoke-virtual {v1, v2, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_1
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzdbb;->zza(Landroid/os/Bundle;)LN2/o;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdbb;->zza:Lcom/google/android/gms/internal/ads/zzfop;

    sget-object v4, Lcom/google/android/gms/internal/ads/zzfoj;->zzb:Lcom/google/android/gms/internal/ads/zzfoj;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzdbb;->zzg:Lcom/google/android/gms/internal/ads/zzilo;

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzilo;->zzb()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LN2/o;

    const/4 v6, 0x2

    new-array v6, v6, [LN2/o;

    aput-object v2, v6, v0

    const/4 v0, 0x1

    aput-object v5, v6, v0

    invoke-virtual {v3, v4, v6}, Lcom/google/android/gms/internal/ads/zzfoh;->zzb(Ljava/lang/Object;[LN2/o;)Lcom/google/android/gms/internal/ads/zzfny;

    move-result-object v0

    new-instance v3, Lcom/google/android/gms/internal/ads/zzdba;

    invoke-direct {v3, p0, v2, v1}, Lcom/google/android/gms/internal/ads/zzdba;-><init>(Lcom/google/android/gms/internal/ads/zzdbb;LN2/o;Landroid/os/Bundle;)V

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzfny;->zza(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/zzfog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfog;->zzi()Lcom/google/android/gms/internal/ads/zzfnw;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic zzc(LN2/o;Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzcai;
    .locals 16

    move-object/from16 v0, p0

    new-instance v15, Lcom/google/android/gms/internal/ads/zzcai;

    invoke-interface/range {p1 .. p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/os/Bundle;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzdbb;->zzg:Lcom/google/android/gms/internal/ads/zzilo;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzilo;->zzb()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LN2/o;

    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Ljava/lang/String;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbhv;->zzhX:Lcom/google/android/gms/internal/ads/zzbhm;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbht;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzbht;->zzd(Lcom/google/android/gms/internal/ads/zzbhm;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzdbb;->zzj:Lcom/google/android/gms/ads/internal/util/zzg;

    invoke-interface {v1}, Lcom/google/android/gms/ads/internal/util/zzg;->zzx()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    move v12, v1

    goto :goto_0

    :cond_0
    move v12, v3

    :goto_0
    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzdbb;->zzh:Ljava/lang/String;

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzdbb;->zzf:Landroid/content/pm/PackageInfo;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzdbb;->zze:Ljava/util/List;

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzdbb;->zzd:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzdbb;->zzc:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzdbb;->zzb:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzdbb;->zzk:Lcom/google/android/gms/internal/ads/zzfkd;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfkd;->zza()Z

    move-result v13

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v1, v15

    move-object/from16 v14, p2

    invoke-direct/range {v1 .. v14}, Lcom/google/android/gms/internal/ads/zzcai;-><init>(Landroid/os/Bundle;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Ljava/util/List;Landroid/content/pm/PackageInfo;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzflz;Ljava/lang/String;ZZLandroid/os/Bundle;)V

    return-object v15
.end method
