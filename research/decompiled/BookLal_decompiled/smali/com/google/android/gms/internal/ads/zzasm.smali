.class final Lcom/google/android/gms/internal/ads/zzasm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Ljava/lang/String;

.field final synthetic zzb:J

.field final synthetic zzc:Lcom/google/android/gms/internal/ads/zzaso;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzaso;Ljava/lang/String;J)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzasm;->zza:Ljava/lang/String;

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzasm;->zzb:J

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzasm;->zzc:Lcom/google/android/gms/internal/ads/zzaso;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzasm;->zzc:Lcom/google/android/gms/internal/ads/zzaso;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaso;->zzx()Lcom/google/android/gms/internal/ads/zzasz;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzasm;->zza:Ljava/lang/String;

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzasm;->zzb:J

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzasz;->zza(Ljava/lang/String;J)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaso;->zzx()Lcom/google/android/gms/internal/ads/zzasz;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaso;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzasz;->zzb(Ljava/lang/String;)V

    return-void
.end method
