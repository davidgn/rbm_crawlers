.class final synthetic Lcom/google/android/gms/internal/ads/zzeaw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzebb;

.field private final synthetic zzb:Ljava/lang/Object;

.field private final synthetic zzc:Lcom/google/android/gms/internal/ads/zzcfb;

.field private final synthetic zzd:Ljava/lang/String;

.field private final synthetic zze:J

.field private final synthetic zzf:Lcom/google/android/gms/internal/ads/zzfoz;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzebb;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzcfb;Ljava/lang/String;JLcom/google/android/gms/internal/ads/zzfoz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeaw;->zza:Lcom/google/android/gms/internal/ads/zzebb;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeaw;->zzb:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzeaw;->zzc:Lcom/google/android/gms/internal/ads/zzcfb;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzeaw;->zzd:Ljava/lang/String;

    iput-wide p5, p0, Lcom/google/android/gms/internal/ads/zzeaw;->zze:J

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzeaw;->zzf:Lcom/google/android/gms/internal/ads/zzfoz;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeaw;->zza:Lcom/google/android/gms/internal/ads/zzebb;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeaw;->zzb:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzeaw;->zzc:Lcom/google/android/gms/internal/ads/zzcfb;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzeaw;->zzd:Ljava/lang/String;

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzeaw;->zze:J

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzeaw;->zzf:Lcom/google/android/gms/internal/ads/zzfoz;

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzebb;->zzi(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzcfb;Ljava/lang/String;JLcom/google/android/gms/internal/ads/zzfoz;)V

    return-void
.end method
