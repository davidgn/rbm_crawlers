.class public final Lcom/google/android/gms/internal/ads/zzdvn;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzazz;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzbjc;

.field private final zzd:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field private final zze:Lcom/google/android/gms/ads/internal/zza;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzbgu;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzdex;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzejw;

.field private final zzi:Lcom/google/android/gms/internal/ads/zzfkh;

.field private final zzj:Lcom/google/android/gms/internal/ads/zzdyq;

.field private final zzk:Lcom/google/android/gms/internal/ads/zzcly;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzckp;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzazz;Lcom/google/android/gms/internal/ads/zzbjc;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/ads/internal/zza;Lcom/google/android/gms/internal/ads/zzbgu;Lcom/google/android/gms/internal/ads/zzdex;Lcom/google/android/gms/internal/ads/zzejw;Lcom/google/android/gms/internal/ads/zzfkh;Lcom/google/android/gms/internal/ads/zzdyq;Lcom/google/android/gms/internal/ads/zzcly;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdvn;->zza:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdvn;->zzb:Lcom/google/android/gms/internal/ads/zzazz;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdvn;->zzc:Lcom/google/android/gms/internal/ads/zzbjc;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzdvn;->zzd:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzdvn;->zze:Lcom/google/android/gms/ads/internal/zza;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzdvn;->zzf:Lcom/google/android/gms/internal/ads/zzbgu;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzdvn;->zzg:Lcom/google/android/gms/internal/ads/zzdex;

    iput-object p9, p0, Lcom/google/android/gms/internal/ads/zzdvn;->zzh:Lcom/google/android/gms/internal/ads/zzejw;

    iput-object p10, p0, Lcom/google/android/gms/internal/ads/zzdvn;->zzi:Lcom/google/android/gms/internal/ads/zzfkh;

    iput-object p11, p0, Lcom/google/android/gms/internal/ads/zzdvn;->zzj:Lcom/google/android/gms/internal/ads/zzdyq;

    iput-object p12, p0, Lcom/google/android/gms/internal/ads/zzdvn;->zzk:Lcom/google/android/gms/internal/ads/zzcly;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/ads/internal/client/zzr;Lcom/google/android/gms/internal/ads/zzfjk;Lcom/google/android/gms/internal/ads/zzfjn;)Lcom/google/android/gms/internal/ads/zzcjz;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzcmj;->zza(Lcom/google/android/gms/ads/internal/client/zzr;)Lcom/google/android/gms/internal/ads/zzcmj;

    move-result-object v2

    move-object/from16 v1, p1

    iget-object v3, v1, Lcom/google/android/gms/ads/internal/client/zzr;->zza:Ljava/lang/String;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdvc;

    move-object v10, v1

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzdvc;-><init>(Lcom/google/android/gms/internal/ads/zzdvn;)V

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzdvn;->zzb:Lcom/google/android/gms/internal/ads/zzazz;

    iget-object v15, v0, Lcom/google/android/gms/internal/ads/zzdvn;->zzh:Lcom/google/android/gms/internal/ads/zzejw;

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzdvn;->zzc:Lcom/google/android/gms/internal/ads/zzbjc;

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzdvn;->zze:Lcom/google/android/gms/ads/internal/zza;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzdvn;->zzi:Lcom/google/android/gms/internal/ads/zzfkh;

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzdvn;->zza:Landroid/content/Context;

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzdvn;->zzd:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzdvn;->zzf:Lcom/google/android/gms/internal/ads/zzbgu;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzdvn;->zzj:Lcom/google/android/gms/internal/ads/zzdyq;

    move-object/from16 v17, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v9, 0x0

    invoke-static/range {v1 .. v17}, Lcom/google/android/gms/internal/ads/zzckp;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcmj;Ljava/lang/String;ZZLcom/google/android/gms/internal/ads/zzazz;Lcom/google/android/gms/internal/ads/zzbjc;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/ads/zzbik;Lcom/google/android/gms/ads/internal/zzn;Lcom/google/android/gms/ads/internal/zza;Lcom/google/android/gms/internal/ads/zzbgu;Lcom/google/android/gms/internal/ads/zzfjk;Lcom/google/android/gms/internal/ads/zzfjn;Lcom/google/android/gms/internal/ads/zzejw;Lcom/google/android/gms/internal/ads/zzfkh;Lcom/google/android/gms/internal/ads/zzdyq;)Lcom/google/android/gms/internal/ads/zzcjz;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbhv;->zzpx:Lcom/google/android/gms/internal/ads/zzbhm;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbht;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzbht;->zzd(Lcom/google/android/gms/internal/ads/zzbhm;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzdvn;->zzk:Lcom/google/android/gms/internal/ads/zzcly;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzcjz;->zzD()Landroid/webkit/WebView;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzcly;->zza(Landroid/webkit/WebView;)V

    :cond_0
    return-object v1
.end method

.method public final synthetic zzb()Lcom/google/android/gms/internal/ads/zzdex;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdvn;->zzg:Lcom/google/android/gms/internal/ads/zzdex;

    return-object v0
.end method
