.class public final Lcom/google/android/gms/internal/ads/zzcss;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdbz;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzfjn;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzfjv;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzfrb;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzfrf;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfjv;Lcom/google/android/gms/internal/ads/zzfrf;Lcom/google/android/gms/internal/ads/zzfrb;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcss;->zzb:Lcom/google/android/gms/internal/ads/zzfjv;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcss;->zzd:Lcom/google/android/gms/internal/ads/zzfrf;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcss;->zzc:Lcom/google/android/gms/internal/ads/zzfrb;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfjv;->zzb:Lcom/google/android/gms/internal/ads/zzfju;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfju;->zzb:Lcom/google/android/gms/internal/ads/zzfjn;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcss;->zza:Lcom/google/android/gms/internal/ads/zzfjn;

    return-void
.end method


# virtual methods
.method public final zzdJ(Lcom/google/android/gms/ads/internal/client/zze;)V
    .locals 4

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcss;->zza:Lcom/google/android/gms/internal/ads/zzfjn;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfjn;->zza:Ljava/util/List;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcss;->zzc:Lcom/google/android/gms/internal/ads/zzfrb;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcss;->zzb:Lcom/google/android/gms/internal/ads/zzfjv;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcss;->zzd:Lcom/google/android/gms/internal/ads/zzfrf;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, p1}, Lcom/google/android/gms/internal/ads/zzfrb;->zza(Lcom/google/android/gms/internal/ads/zzfjv;Lcom/google/android/gms/internal/ads/zzfjk;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v2, p1, v3}, Lcom/google/android/gms/internal/ads/zzfrf;->zza(Ljava/util/List;Lcom/google/android/gms/ads/internal/util/client/zzv;)V

    return-void
.end method
