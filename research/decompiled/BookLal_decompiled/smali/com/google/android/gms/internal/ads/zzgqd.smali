.class final synthetic Lcom/google/android/gms/internal/ads/zzgqd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzgqr;

.field private final synthetic zzb:Lcom/google/android/gms/internal/ads/zzgpy;

.field private final synthetic zzc:Lcom/google/android/gms/internal/ads/zzgqw;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzgqr;Lcom/google/android/gms/internal/ads/zzgpy;Lcom/google/android/gms/internal/ads/zzgqw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgqd;->zza:Lcom/google/android/gms/internal/ads/zzgqr;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgqd;->zzb:Lcom/google/android/gms/internal/ads/zzgpy;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzgqd;->zzc:Lcom/google/android/gms/internal/ads/zzgqw;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgqd;->zza:Lcom/google/android/gms/internal/ads/zzgqr;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgqd;->zzb:Lcom/google/android/gms/internal/ads/zzgpy;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgqd;->zzc:Lcom/google/android/gms/internal/ads/zzgqw;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgqr;->zzf(Lcom/google/android/gms/internal/ads/zzgpy;Lcom/google/android/gms/internal/ads/zzgqw;)V

    return-void
.end method
