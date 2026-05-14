.class final Lcom/google/android/gms/internal/ads/zzgzo$zzb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field final zza:Lcom/google/android/gms/internal/ads/zzgzo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzgzo<",
            "TV;>;"
        }
    .end annotation
.end field

.field final zzb:LN2/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LN2/o;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzgzo;LN2/o;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgzo$zzb;->zza:Lcom/google/android/gms/internal/ads/zzgzo;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgzo$zzb;->zzb:LN2/o;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgzo$zzb;->zza:Lcom/google/android/gms/internal/ads/zzgzo;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzgzp;->valueField:Ljava/lang/Object;

    if-eq v0, p0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgzo$zzb;->zzb:LN2/o;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgzo$zzb;->zza:Lcom/google/android/gms/internal/ads/zzgzo;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgzo;->zzn(LN2/o;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, p0, v0}, Lcom/google/android/gms/internal/ads/zzgzp;->zzr(Lcom/google/android/gms/internal/ads/zzgzp;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgzo$zzb;->zza:Lcom/google/android/gms/internal/ads/zzgzo;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzgzo;->zzo(Lcom/google/android/gms/internal/ads/zzgzo;Z)V

    :cond_1
    :goto_0
    return-void
.end method
