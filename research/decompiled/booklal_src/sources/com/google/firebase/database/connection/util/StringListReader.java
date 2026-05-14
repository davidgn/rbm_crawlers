package com.google.firebase.database.connection.util;

import java.io.IOException;
import java.io.Reader;
import java.nio.CharBuffer;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2.dex */
public class StringListReader extends Reader {
    private List<String> strings;
    private boolean closed = false;
    private int charPos;
    private int markedCharPos = this.charPos;
    private int stringListPos;
    private int markedStringListPos = this.stringListPos;
    private boolean frozen = false;

    public StringListReader() {
        this.strings = null;
        this.strings = new ArrayList();
    }

    private long advance(long j5) {
        long j6 = 0;
        while (this.stringListPos < this.strings.size() && j6 < j5) {
            long j7 = j5 - j6;
            long currentStringRemainingChars = currentStringRemainingChars();
            if (j7 < currentStringRemainingChars) {
                this.charPos = (int) (this.charPos + j7);
                j6 += j7;
            } else {
                j6 += currentStringRemainingChars;
                this.charPos = 0;
                this.stringListPos++;
            }
        }
        return j6;
    }

    private void checkState() {
        if (this.closed) {
            throw new IOException("Stream already closed");
        }
        if (!this.frozen) {
            throw new IOException("Reader needs to be frozen before read operations can be called");
        }
    }

    private String currentString() {
        if (this.stringListPos < this.strings.size()) {
            return this.strings.get(this.stringListPos);
        }
        return null;
    }

    private int currentStringRemainingChars() {
        String currentString = currentString();
        if (currentString == null) {
            return 0;
        }
        return currentString.length() - this.charPos;
    }

    public void addString(String str) {
        if (this.frozen) {
            throw new IllegalStateException("Trying to add string after reading");
        }
        if (str.length() > 0) {
            this.strings.add(str);
        }
    }

    @Override // java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        checkState();
        this.closed = true;
    }

    public void freeze() {
        if (this.frozen) {
            throw new IllegalStateException("Trying to freeze frozen StringListReader");
        }
        this.frozen = true;
    }

    @Override // java.io.Reader
    public void mark(int i) {
        checkState();
        this.markedCharPos = this.charPos;
        this.markedStringListPos = this.stringListPos;
    }

    @Override // java.io.Reader
    public boolean markSupported() {
        return true;
    }

    @Override // java.io.Reader, java.lang.Readable
    public int read(CharBuffer charBuffer) {
        checkState();
        int remaining = charBuffer.remaining();
        String currentString = currentString();
        int i = 0;
        while (remaining > 0 && currentString != null) {
            int min = Math.min(currentString.length() - this.charPos, remaining);
            int i4 = this.charPos;
            charBuffer.put(this.strings.get(this.stringListPos), i4, i4 + min);
            remaining -= min;
            i += min;
            advance(min);
            currentString = currentString();
        }
        if (i > 0 || currentString != null) {
            return i;
        }
        return -1;
    }

    @Override // java.io.Reader
    public boolean ready() {
        checkState();
        return true;
    }

    @Override // java.io.Reader
    public void reset() {
        this.charPos = this.markedCharPos;
        this.stringListPos = this.markedStringListPos;
    }

    @Override // java.io.Reader
    public long skip(long j5) {
        checkState();
        return advance(j5);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        for (String str : this.strings) {
            sb.append(str);
        }
        return sb.toString();
    }

    @Override // java.io.Reader
    public int read() {
        checkState();
        String currentString = currentString();
        if (currentString == null) {
            return -1;
        }
        char charAt = currentString.charAt(this.charPos);
        advance(1L);
        return charAt;
    }

    @Override // java.io.Reader
    public int read(char[] cArr, int i, int i4) {
        checkState();
        String currentString = currentString();
        int i5 = 0;
        while (currentString != null && i5 < i4) {
            int min = Math.min(currentStringRemainingChars(), i4 - i5);
            int i6 = this.charPos;
            currentString.getChars(i6, i6 + min, cArr, i + i5);
            i5 += min;
            advance(min);
            currentString = currentString();
        }
        if (i5 > 0 || currentString != null) {
            return i5;
        }
        return -1;
    }
}
