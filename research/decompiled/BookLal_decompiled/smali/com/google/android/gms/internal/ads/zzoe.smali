.class final synthetic Lcom/google/android/gms/internal/ads/zzoe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdz;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzng;

.field private final synthetic zzb:Lcom/google/android/gms/internal/ads/zzwk;

.field private final synthetic zzc:Lcom/google/android/gms/internal/ads/zzwp;

.field private final synthetic zzd:Ljava/io/IOException;

.field private final synthetic zze:Z


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzng;Lcom/google/android/gms/internal/ads/zzwk;Lcom/google/android/gms/internal/ads/zzwp;Ljava/io/IOException;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzoe;->zza:Lcom/google/android/gms/internal/ads/zzng;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzoe;->zzb:Lcom/google/android/gms/internal/ads/zzwk;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzoe;->zzc:Lcom/google/android/gms/internal/ads/zzwp;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzoe;->zzd:Ljava/io/IOException;

    iput-boolean p5, p0, Lcom/google/android/gms/internal/ads/zzoe;->zze:Z

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;)V
    .locals 6

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzni;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzoe;->zza:Lcom/google/android/gms/internal/ads/zzng;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzoe;->zzb:Lcom/google/android/gms/internal/ads/zzwk;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzoe;->zzc:Lcom/google/android/gms/internal/ads/zzwp;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzoe;->zzd:Ljava/io/IOException;

    iget-boolean v5, p0, Lcom/google/android/gms/internal/ads/zzoe;->zze:Z

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzni;->zzh(Lcom/google/android/gms/internal/ads/zzng;Lcom/google/android/gms/internal/ads/zzwk;Lcom/google/android/gms/internal/ads/zzwp;Ljava/io/IOException;Z)V

    return-void
.end method
