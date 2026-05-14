.class final synthetic Lcom/google/android/gms/internal/ads/zzcku;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzeks;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzeks;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcku;->zza:Lcom/google/android/gms/internal/ads/zzeks;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 2

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzu()Lcom/google/android/gms/internal/ads/zzekn;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcku;->zza:Lcom/google/android/gms/internal/ads/zzeks;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzeks;->zza()Lcom/google/android/gms/internal/ads/zzftl;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzekn;->zzf(Lcom/google/android/gms/internal/ads/zzftl;)V

    return-void
.end method
