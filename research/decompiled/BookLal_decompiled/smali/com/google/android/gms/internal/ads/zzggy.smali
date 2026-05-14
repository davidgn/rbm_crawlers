.class final synthetic Lcom/google/android/gms/internal/ads/zzggy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzggz;

.field private final synthetic zzb:Lcom/google/android/gms/internal/ads/zzghb;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzggz;Lcom/google/android/gms/internal/ads/zzghb;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzggy;->zza:Lcom/google/android/gms/internal/ads/zzggz;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzggy;->zzb:Lcom/google/android/gms/internal/ads/zzghb;

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzggy;->zza:Lcom/google/android/gms/internal/ads/zzggz;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzggy;->zzb:Lcom/google/android/gms/internal/ads/zzghb;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzggz;->zzd(Lcom/google/android/gms/internal/ads/zzghb;)Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method
