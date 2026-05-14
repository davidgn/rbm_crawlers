.class final synthetic Lcom/google/android/gms/internal/ads/zzedu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzazz;

.field private final synthetic zzb:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzazz;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzedu;->zza:Lcom/google/android/gms/internal/ads/zzazz;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzedu;->zzb:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzedu;->zza:Lcom/google/android/gms/internal/ads/zzazz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzazz;->zzb()Lcom/google/android/gms/internal/ads/zzazu;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzedu;->zzb:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzazu;->zzk(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
