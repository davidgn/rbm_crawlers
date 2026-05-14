package com.google.firebase.firestore;

import com.google.firebase.firestore.bundle.BundleMetadata;
/* loaded from: classes2.dex */
public final class LoadBundleTaskProgress {
    static final LoadBundleTaskProgress INITIAL = new LoadBundleTaskProgress(0, 0, 0, 0, null, TaskState.SUCCESS);
    private final long bytesLoaded;
    private final int documentsLoaded;
    private final Exception exception;
    private final TaskState taskState;
    private final long totalBytes;
    private final int totalDocuments;

    /* loaded from: classes2.dex */
    public enum TaskState {
        ERROR,
        RUNNING,
        SUCCESS
    }

    public LoadBundleTaskProgress(int i, int i4, long j5, long j6, Exception exc, TaskState taskState) {
        this.documentsLoaded = i;
        this.totalDocuments = i4;
        this.bytesLoaded = j5;
        this.totalBytes = j6;
        this.taskState = taskState;
        this.exception = exc;
    }

    public static LoadBundleTaskProgress forInitial(BundleMetadata bundleMetadata) {
        return new LoadBundleTaskProgress(0, bundleMetadata.getTotalDocuments(), 0L, bundleMetadata.getTotalBytes(), null, TaskState.RUNNING);
    }

    public static LoadBundleTaskProgress forSuccess(BundleMetadata bundleMetadata) {
        return new LoadBundleTaskProgress(bundleMetadata.getTotalDocuments(), bundleMetadata.getTotalDocuments(), bundleMetadata.getTotalBytes(), bundleMetadata.getTotalBytes(), null, TaskState.SUCCESS);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || LoadBundleTaskProgress.class != obj.getClass()) {
            return false;
        }
        LoadBundleTaskProgress loadBundleTaskProgress = (LoadBundleTaskProgress) obj;
        if (this.documentsLoaded == loadBundleTaskProgress.documentsLoaded && this.totalDocuments == loadBundleTaskProgress.totalDocuments && this.bytesLoaded == loadBundleTaskProgress.bytesLoaded && this.totalBytes == loadBundleTaskProgress.totalBytes && this.taskState == loadBundleTaskProgress.taskState) {
            Exception exc = this.exception;
            Exception exc2 = loadBundleTaskProgress.exception;
            return exc != null ? exc.equals(exc2) : exc2 == null;
        }
        return false;
    }

    public long getBytesLoaded() {
        return this.bytesLoaded;
    }

    public int getDocumentsLoaded() {
        return this.documentsLoaded;
    }

    public Exception getException() {
        return this.exception;
    }

    public TaskState getTaskState() {
        return this.taskState;
    }

    public long getTotalBytes() {
        return this.totalBytes;
    }

    public int getTotalDocuments() {
        return this.totalDocuments;
    }

    public int hashCode() {
        long j5 = this.bytesLoaded;
        long j6 = this.totalBytes;
        int hashCode = (this.taskState.hashCode() + (((((((this.documentsLoaded * 31) + this.totalDocuments) * 31) + ((int) (j5 ^ (j5 >>> 32)))) * 31) + ((int) (j6 ^ (j6 >>> 32)))) * 31)) * 31;
        Exception exc = this.exception;
        return hashCode + (exc != null ? exc.hashCode() : 0);
    }
}
