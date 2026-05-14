.class final synthetic Lcom/google/android/gms/internal/ads/zzxb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzds;

.field private final synthetic zzb:Lcom/google/android/gms/internal/ads/zzxe;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzds;Lcom/google/android/gms/internal/ads/zzxe;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzxb;->zza:Lcom/google/android/gms/internal/ads/zzds;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzxb;->zzb:Lcom/google/android/gms/internal/ads/zzxe;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxb;->zza:Lcom/google/android/gms/internal/ads/zzds;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzxb;->zzb:Lcom/google/android/gms/internal/ads/zzxe;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzds;->zza(Ljava/lang/Object;)V

    return-void
.end method
