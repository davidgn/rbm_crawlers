.class final synthetic Lcom/google/android/gms/internal/ads/zzcxm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzhas;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzhas;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcxm;->zza:Lcom/google/android/gms/internal/ads/zzhas;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzedi;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzedi;-><init>(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcxm;->zza:Lcom/google/android/gms/internal/ads/zzhas;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzhas;->zza(Ljava/lang/Throwable;)V

    return-void
.end method
