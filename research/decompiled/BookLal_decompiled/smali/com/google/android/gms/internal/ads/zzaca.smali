.class final synthetic Lcom/google/android/gms/internal/ads/zzaca;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzacc;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzacc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaca;->zza:Lcom/google/android/gms/internal/ads/zzacc;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaca;->zza:Lcom/google/android/gms/internal/ads/zzacc;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzacc;->zza:Lcom/google/android/gms/internal/ads/zzacd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzacd;->zzB()Lcom/google/android/gms/internal/ads/zzadz;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzadz;->zzc()V

    return-void
.end method
