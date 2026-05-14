.class final synthetic Lcom/google/android/gms/internal/ads/zzpb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdz;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzng;

.field private final synthetic zzb:I

.field private final synthetic zzc:J

.field private final synthetic zzd:J


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzng;IJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzpb;->zza:Lcom/google/android/gms/internal/ads/zzng;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzpb;->zzb:I

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzpb;->zzc:J

    iput-wide p5, p0, Lcom/google/android/gms/internal/ads/zzpb;->zzd:J

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;)V
    .locals 7

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzni;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzpb;->zza:Lcom/google/android/gms/internal/ads/zzng;

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzpb;->zzb:I

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzpb;->zzc:J

    iget-wide v5, p0, Lcom/google/android/gms/internal/ads/zzpb;->zzd:J

    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzni;->zzdg(Lcom/google/android/gms/internal/ads/zzng;IJJ)V

    return-void
.end method
