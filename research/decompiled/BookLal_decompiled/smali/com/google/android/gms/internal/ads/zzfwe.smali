.class final synthetic Lcom/google/android/gms/internal/ads/zzfwe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/Continuation;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzawc;

.field private final synthetic zzb:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzawc;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfwe;->zza:Lcom/google/android/gms/internal/ads/zzawc;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzfwe;->zzb:I

    return-void
.end method


# virtual methods
.method public final synthetic then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfwe;->zzb:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfwe;->zza:Lcom/google/android/gms/internal/ads/zzawc;

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzfyd;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzicx;->zzbm()Lcom/google/android/gms/internal/ads/zzidd;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzawg;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzibi;->zzaN()[B

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzfyd;->zza([B)Lcom/google/android/gms/internal/ads/zzfyc;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzfyc;->zzc(I)Lcom/google/android/gms/internal/ads/zzfyc;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfyc;->zza()V

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    return-object p1
.end method
