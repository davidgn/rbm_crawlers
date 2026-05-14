.class final synthetic Lcom/google/android/gms/internal/ads/zzenh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzenj;

.field private final synthetic zzb:LN2/o;

.field private final synthetic zzc:LN2/o;

.field private final synthetic zzd:Lcom/google/android/gms/internal/ads/zzfjv;

.field private final synthetic zze:Lcom/google/android/gms/internal/ads/zzfjk;

.field private final synthetic zzf:Lorg/json/JSONObject;

.field private final synthetic zzg:Lcom/google/android/gms/ads/internal/zzb;

.field private final synthetic zzh:Lcom/google/android/gms/internal/ads/zzccs;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzenj;LN2/o;LN2/o;Lcom/google/android/gms/internal/ads/zzfjv;Lcom/google/android/gms/internal/ads/zzfjk;Lorg/json/JSONObject;Lcom/google/android/gms/ads/internal/zzb;Lcom/google/android/gms/internal/ads/zzccs;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzenh;->zza:Lcom/google/android/gms/internal/ads/zzenj;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzenh;->zzb:LN2/o;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzenh;->zzc:LN2/o;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzenh;->zzd:Lcom/google/android/gms/internal/ads/zzfjv;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzenh;->zze:Lcom/google/android/gms/internal/ads/zzfjk;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzenh;->zzf:Lorg/json/JSONObject;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzenh;->zzg:Lcom/google/android/gms/ads/internal/zzb;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzenh;->zzh:Lcom/google/android/gms/internal/ads/zzccs;

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzenh;->zza:Lcom/google/android/gms/internal/ads/zzenj;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzenh;->zzb:LN2/o;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzenh;->zzc:LN2/o;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzenh;->zzd:Lcom/google/android/gms/internal/ads/zzfjv;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzenh;->zze:Lcom/google/android/gms/internal/ads/zzfjk;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzenh;->zzf:Lorg/json/JSONObject;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzenh;->zzg:Lcom/google/android/gms/ads/internal/zzb;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzenh;->zzh:Lcom/google/android/gms/internal/ads/zzccs;

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzenj;->zzf(LN2/o;LN2/o;Lcom/google/android/gms/internal/ads/zzfjv;Lcom/google/android/gms/internal/ads/zzfjk;Lorg/json/JSONObject;Lcom/google/android/gms/ads/internal/zzb;Lcom/google/android/gms/internal/ads/zzccs;)Lcom/google/android/gms/internal/ads/zzdot;

    move-result-object v0

    return-object v0
.end method
