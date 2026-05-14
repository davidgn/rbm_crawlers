.class final synthetic Lcom/google/android/gms/internal/ads/zzgoi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzgoj;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzgoj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgoi;->zza:Lcom/google/android/gms/internal/ads/zzgoj;

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgoi;->zza:Lcom/google/android/gms/internal/ads/zzgoj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgoj;->zze()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
