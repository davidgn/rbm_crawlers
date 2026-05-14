.class final synthetic Lcom/google/android/gms/internal/ads/zzdpw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzdpx;

.field private final synthetic zzb:Lcom/google/android/gms/internal/ads/zzdqv;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzdpx;Lcom/google/android/gms/internal/ads/zzdqv;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdpw;->zza:Lcom/google/android/gms/internal/ads/zzdpx;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdpw;->zzb:Lcom/google/android/gms/internal/ads/zzdqv;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdpw;->zza:Lcom/google/android/gms/internal/ads/zzdpx;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdpw;->zzb:Lcom/google/android/gms/internal/ads/zzdqv;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdpx;->zzf(Lcom/google/android/gms/internal/ads/zzdqv;)V

    return-void
.end method
