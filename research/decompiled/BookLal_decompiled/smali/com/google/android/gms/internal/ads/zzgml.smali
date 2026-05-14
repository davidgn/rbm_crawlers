.class final synthetic Lcom/google/android/gms/internal/ads/zzgml;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgsa;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzgph;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzgph;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgml;->zza:Lcom/google/android/gms/internal/ads/zzgph;

    return-void
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Ljava/lang/Throwable;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgml;->zza:Lcom/google/android/gms/internal/ads/zzgph;

    const/16 v1, 0x3bcd

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzgph;->zzd(ILjava/lang/Throwable;)V

    const/4 p1, 0x0

    new-array p1, p1, [B

    return-object p1
.end method
