.class final synthetic Lcom/google/android/gms/internal/ads/zzgrd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzgri;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzgri;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgrd;->zza:Lcom/google/android/gms/internal/ads/zzgri;

    return-void
.end method


# virtual methods
.method public final synthetic binderDied()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgrd;->zza:Lcom/google/android/gms/internal/ads/zzgri;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgri;->zzd()V

    return-void
.end method
