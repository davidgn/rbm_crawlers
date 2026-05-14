.class final synthetic Lcom/google/android/gms/internal/ads/zzgkj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgsa;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzgkq;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzgkq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgkj;->zza:Lcom/google/android/gms/internal/ads/zzgkq;

    return-void
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgkj;->zza:Lcom/google/android/gms/internal/ads/zzgkq;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzfxq;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgkq;->zzj(Lcom/google/android/gms/internal/ads/zzfxq;)Z

    new-instance p1, Ljava/lang/Boolean;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/lang/Boolean;-><init>(Z)V

    return-object p1
.end method
