.class final synthetic Lcom/google/android/gms/internal/ads/zzfhk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzfhl;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzfhl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfhk;->zza:Lcom/google/android/gms/internal/ads/zzfhl;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfhk;->zza:Lcom/google/android/gms/internal/ads/zzfhl;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfhl;->zze:Lcom/google/android/gms/internal/ads/zzfhn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfhn;->zzf()Lcom/google/android/gms/internal/ads/zzesh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzesh;->zzg()V

    return-void
.end method
