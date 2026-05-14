.class final synthetic Lcom/google/android/gms/internal/ads/zzdsu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhad;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzdsz;

.field private final synthetic zzb:Lcom/google/android/gms/ads/internal/zzb;

.field private final synthetic zzc:Lcom/google/android/gms/internal/ads/zzccs;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzdsz;Lcom/google/android/gms/ads/internal/zzb;Lcom/google/android/gms/internal/ads/zzccs;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdsu;->zza:Lcom/google/android/gms/internal/ads/zzdsz;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdsu;->zzb:Lcom/google/android/gms/ads/internal/zzb;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdsu;->zzc:Lcom/google/android/gms/internal/ads/zzccs;

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;)LN2/o;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsu;->zza:Lcom/google/android/gms/internal/ads/zzdsz;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdsu;->zzb:Lcom/google/android/gms/ads/internal/zzb;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdsu;->zzc:Lcom/google/android/gms/internal/ads/zzccs;

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzdsz;->zze(Lcom/google/android/gms/ads/internal/zzb;Lcom/google/android/gms/internal/ads/zzccs;Ljava/lang/Object;)LN2/o;

    move-result-object p1

    return-object p1
.end method
