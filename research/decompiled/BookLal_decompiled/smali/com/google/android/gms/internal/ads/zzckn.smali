.class final synthetic Lcom/google/android/gms/internal/ads/zzckn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhac;


# instance fields
.field private final synthetic zza:Landroid/content/Context;

.field private final synthetic zzb:Lcom/google/android/gms/internal/ads/zzazz;

.field private final synthetic zzc:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field private final synthetic zzd:Lcom/google/android/gms/ads/internal/zza;

.field private final synthetic zze:Lcom/google/android/gms/internal/ads/zzejw;

.field private final synthetic zzf:Lcom/google/android/gms/internal/ads/zzfkh;

.field private final synthetic zzg:Lcom/google/android/gms/internal/ads/zzdyq;

.field private final synthetic zzh:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzazz;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/ads/internal/zza;Lcom/google/android/gms/internal/ads/zzejw;Lcom/google/android/gms/internal/ads/zzfkh;Lcom/google/android/gms/internal/ads/zzdyq;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzckn;->zza:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzckn;->zzb:Lcom/google/android/gms/internal/ads/zzazz;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzckn;->zzc:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzckn;->zzd:Lcom/google/android/gms/ads/internal/zza;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzckn;->zze:Lcom/google/android/gms/internal/ads/zzejw;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzckn;->zzf:Lcom/google/android/gms/internal/ads/zzfkh;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzckn;->zzg:Lcom/google/android/gms/internal/ads/zzdyq;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzckn;->zzh:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final synthetic zza()LN2/o;
    .locals 18

    move-object/from16 v0, p0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzd()Lcom/google/android/gms/internal/ads/zzckp;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzckn;->zza:Landroid/content/Context;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzcmj;->zzb()Lcom/google/android/gms/internal/ads/zzcmj;

    move-result-object v2

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzckn;->zzd:Lcom/google/android/gms/ads/internal/zza;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbgu;->zza()Lcom/google/android/gms/internal/ads/zzbgu;

    move-result-object v12

    iget-object v15, v0, Lcom/google/android/gms/internal/ads/zzckn;->zze:Lcom/google/android/gms/internal/ads/zzejw;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzckn;->zzf:Lcom/google/android/gms/internal/ads/zzfkh;

    move-object/from16 v16, v3

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzckn;->zzg:Lcom/google/android/gms/internal/ads/zzdyq;

    move-object/from16 v17, v3

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzckn;->zzc:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzckn;->zzb:Lcom/google/android/gms/internal/ads/zzazz;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-string v3, ""

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v1 .. v17}, Lcom/google/android/gms/internal/ads/zzckp;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcmj;Ljava/lang/String;ZZLcom/google/android/gms/internal/ads/zzazz;Lcom/google/android/gms/internal/ads/zzbjc;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/ads/zzbik;Lcom/google/android/gms/ads/internal/zzn;Lcom/google/android/gms/ads/internal/zza;Lcom/google/android/gms/internal/ads/zzbgu;Lcom/google/android/gms/internal/ads/zzfjk;Lcom/google/android/gms/internal/ads/zzfjn;Lcom/google/android/gms/internal/ads/zzejw;Lcom/google/android/gms/internal/ads/zzfkh;Lcom/google/android/gms/internal/ads/zzdyq;)Lcom/google/android/gms/internal/ads/zzcjz;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzcfa;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzcfa;

    move-result-object v2

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzcjz;->zzP()Lcom/google/android/gms/internal/ads/zzclx;

    move-result-object v3

    new-instance v4, Lcom/google/android/gms/internal/ads/zzckm;

    invoke-direct {v4, v2}, Lcom/google/android/gms/internal/ads/zzckm;-><init>(Lcom/google/android/gms/internal/ads/zzcfa;)V

    invoke-interface {v3, v4}, Lcom/google/android/gms/internal/ads/zzclx;->zzG(Lcom/google/android/gms/internal/ads/zzclv;)V

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzckn;->zzh:Ljava/lang/String;

    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/ads/zzcjz;->loadUrl(Ljava/lang/String;)V

    return-object v2
.end method
